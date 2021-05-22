import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'dart:math';
import 'dart:io' show Platform;

class NotificationService {
  static final NotificationService _notificationService =
      NotificationService._internal();
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final int maxInt = 214748364;

  static const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
          "covidVaccineId", //Required for Android 8.0 or after
          "covidVaccineChannel", //Required for Android 8.0 or after
          "covidVaccineDescription", //Required for Android 8.0 or after
          importance: Importance.defaultImportance,
          priority: Priority.defaultPriority,
          visibility: NotificationVisibility.public);

  NotificationDetails androidNotificationDetails =
      NotificationDetails(android: androidPlatformChannelSpecifics);

  static const IOSNotificationDetails iOSPlatformChannelSpecifics =
      IOSNotificationDetails(
    presentAlert:
        true, // Present an alert when the notification is displayed and the application is in the foreground (only from iOS 10 onwards)
    presentBadge:
        false, // Present the badge number when the notification is displayed and the application is in the foreground (only from iOS 10 onwards)
    presentSound:
        false, // Play a sound when the notification is displayed and the application is in the foreground (only from iOS 10 onwards)
  );

  NotificationDetails iOSNotificationDetails =
      NotificationDetails(iOS: iOSPlatformChannelSpecifics);
  var rng = new Random();

  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();

  Future<void> init() async {
    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');

    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS,
            macOS: null);

    tz.initializeTimeZones();
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);
  }

  Future selectNotification(String payload) async {
    //Handle notification tapped logic here
  }

  Future showNotification(String title, String body) async {
    NotificationDetails notificationDetailsCurrent =
        this.androidNotificationDetails;
    if (Platform.isAndroid) {
      notificationDetailsCurrent = this.androidNotificationDetails;
    } else {
      notificationDetailsCurrent = this.iOSNotificationDetails;
    }

    await flutterLocalNotificationsPlugin.show(
        rng.nextInt(maxInt), title, body, notificationDetailsCurrent);
  }

  Future requestPermissions() async {
    final bool result = await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }
}
