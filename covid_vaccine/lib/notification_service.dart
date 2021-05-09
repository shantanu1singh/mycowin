import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'dart:math';

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
    importance: Importance.high,
    priority: Priority.high,
  );

  NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);

  static const IOSNotificationDetails iOSPlatformChannelSpecifics =
      IOSNotificationDetails(
    presentAlert:
        true, // Present an alert when the notification is displayed and the application is in the foreground (only from iOS 10 onwards)
    presentBadge:
        false, // Present the badge number when the notification is displayed and the application is in the foreground (only from iOS 10 onwards)
    presentSound:
        false, // Play a sound when the notification is displayed and the application is in the foreground (only from iOS 10 onwards)
    // sound: String?,  // Specifics the file path to play (only from iOS 10 onwards)
    // badgeNumber: int?, // The application's icon badge number
    // attachments: List<IOSNotificationAttachment>?, (only from iOS 10 onwards)
    // subtitle: String?, //Secondary description  (only from iOS 10 onwards)
    // threadIdentifier: String? (only from iOS 10 onwards)
  );

  // NotificationDetails platformChannelSpecifics =
  //     NotificationDetails(iOS: iOSPlatformChannelSpecifics);
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
    await flutterLocalNotificationsPlugin.show(
        rng.nextInt(maxInt), title, body, platformChannelSpecifics);
  }
}
