import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:cowin_api/api.dart';
import 'package:cowin_api/model/session_calendar_entry_schema.dart';
import 'package:cowin_api/model/inline_response2003_districts.dart';
import 'package:cowin_api/model/inline_response2002_states.dart';
import 'package:flutter/services.dart';
// import 'package:cron/cron.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';
import 'dart:io' show Platform;
// import 'listview.dart';
import 'tabview.dart';
import 'notification_service.dart';

// NotificationService notificationService;
// Cron cron;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Workmanager.initialize(
      callbackDispatcher, // The top level function, aka callbackDispatcher
      isInDebugMode: false // This should be false
      );
  runApp(MyApp());
}

/// Creates instance of [Dio] to be used in the remote layer of the app.
Dio createDio(BaseOptions baseConfiguration) {
  var dio = Dio(baseConfiguration);
  dio.interceptors.addAll([
    // interceptor to retry failed requests
    // interceptor to add bearer token to requests
    // interceptor to refresh access tokens
    // interceptor to log requests/responses
    // etc.
  ]);

  return dio;
}

/// Creates Dio Options for initializing a Dio client.
///
/// [baseUrl] Base url for the configuration
/// [connectionTimeout] Timeout when sending data
/// [connectionReadTimeout] Timeout when receiving data
BaseOptions createDioOptions(
    String baseUrl, int connectionTimeout, int connectionReadTimeout) {
  return BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: connectionTimeout,
    receiveTimeout: connectionReadTimeout,
  );
}

/// Creates an instance of the backend API with default options.
CowinApi createMyApi() {
  const baseUrl = 'https://cdn-api.co-vin.in/api';
  final options = createDioOptions(baseUrl, 60000, 60000);
  final dio = createDio(options);
  return CowinApi(dio: dio);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      // AppointmentListView.routeName: (BuildContext context) =>
      //     new AppointmentListView(),
      AppointmentListTabbedView.routeName: (BuildContext context) =>
          new AppointmentListTabbedView(),
    };
    return MaterialApp(
        title: 'MyCowin',
        theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: TextTheme(
              headline6: TextStyle(fontSize: 30, color: Colors.white),
              subtitle1: TextStyle(fontSize: 17, color: Colors.white),
              subtitle2: TextStyle(fontSize: 20, color: Colors.white),
              bodyText1: TextStyle(fontSize: 20, color: Colors.green),
              bodyText2: TextStyle(fontSize: 15, color: Colors.white)),
        ),
        home: MyHomePage(title: 'MyCowin'),
        routes: routes,
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ageController = TextEditingController();

  var _states = <InlineResponse2002States>[];

  bool districtsInitialized = false;
  var _districts = <InlineResponse2003Districts>[];

  static const String stateNamePlaceholderText = "Choose a state..";
  static const String districtNamePlaceholderText = "Choose a district..";

  final Map<String, List<num>> notificationFrequencyUnitToValuesMap = {
    "hours": new List<int>.generate(24, (i) => i + 1),
    "minutes": new List<int>.generate(60, (i) => i + 15),
    "days": new List<int>.generate(7, (i) => i + 1),
  };

  bool stateStoreInitialized = false;

  StateStore store = new StateStore(stateNamePlaceholderText, -1,
      districtNamePlaceholderText, -1, -1, -1, false, "hours", 1);

  Future refreshFromStore() async {
    if (!this.stateStoreInitialized) {
      StateStore retrievedStore = await StateStore.fromStore();
      if (retrievedStore != null) {
        this.store = retrievedStore;
      }

      this.stateStoreInitialized = true;
    }
  }

  Future<List<InlineResponse2002States>> getStates() async {
    if (this._states.length > 0) {
      return this._states;
    }

    var metadataApi = cowinApi.getMetadataAPIsApi();
    var response = await metadataApi.states();

    if (response.statusCode == 200) {
      this._states = response.data.states.toList();
      return this._states;
    } else {
      throw Exception('Failed to get states');
    }
  }

  Future<List<InlineResponse2003Districts>> getDistricts(int stateId) async {
    if (stateId == -1) {
      return null;
    }

    if (this.districtsInitialized) {
      return this._districts;
    }

    var metadataApi = cowinApi.getMetadataAPIsApi();
    var response = await metadataApi.districts(stateId.toString());
    if (response.statusCode == 200) {
      this._districts = response.data.districts.toList();
      this.districtsInitialized = true;
      return this._districts;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to get districts');
    }
  }

  Future _saveState() async {
    if (this.ageController.text != null && this.ageController.text.isNotEmpty) {
      this.store.age = num.parse(this.ageController.text);
    }
    await this.store.saveStore();
  }

  Future _pushSubmit() async {
    await _saveState();

    // Navigator.pushNamed(
    //   context,
    //   AppointmentListView.routeName,
    //   arguments: AppointmentListViewArguments(
    //     cowinApi,
    //     stateId,
    //     districtId,
    //     pinCode,
    //     age,
    //   ),
    // );

    await updateNotifications(this.store);

    Navigator.pushNamed(
      context,
      AppointmentListTabbedView.routeName,
      arguments: AppointmentListTabbedViewArguments(
        cowinApi,
        this.store.stateId,
        this.store.districtId,
        this.store.pinCode,
        this.store.age,
      ),
    );
  }

  Align getNotificationStatusTextWidget() {
    if (this.store.notificationsEnabled) {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Notifications are enabled",
                style: TextStyle(fontSize: 15, color: Colors.greenAccent),
              )));
    } else {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Notifications are disabled",
                style: TextStyle(fontSize: 15, color: Colors.amber),
              )));
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return FutureBuilder<void>(
        future: refreshFromStore(),
        builder: (context, AsyncSnapshot<void> snapshot) {
          return Scaffold(
              appBar: AppBar(
                // Here we take the value from the MyHomePage object that was created by
                // the App.build method, and use it to set our appbar title.
                title: Text(widget.title,
                    style: Theme.of(context).textTheme.subtitle2),
                backgroundColor: Colors.grey.shade800,
                centerTitle: true,
              ),
              body: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  color: Colors.grey.shade700,
                  // decoration: BoxDecoration(
                  //   gradient: LinearGradient(
                  //     begin: Alignment.bottomCenter,
                  //     end: Alignment.topCenter,
                  //     stops: [0.0, 0.7],
                  //     colors: [
                  //       // Color(0xFFF12711),
                  //       // Color(0xFFf5af19),
                  //       Colors.blue.shade50,
                  //       Colors.blue.shade900,
                  //     ],
                  //   ),
                  // ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FutureBuilder(
                          future: getStates(),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.data == null) {
                              // return CircularProgressIndicator();
                              return DropdownButton<String>(
                                isExpanded: true,
                                items: [],
                                // value: stateName,
                                hint: new Text(
                                  this.store.stateName,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              );
                            } else {
                              List<DropdownMenuItem<int>> list = [];
                              list.clear();
                              Map dropDownItemsMap = new Map();

                              snapshot.data.forEach((state) {
                                //listItemNames.add(branchItem.itemName);
                                int index = snapshot.data.indexOf(state);
                                dropDownItemsMap[index] = state.stateName;

                                list.add(new DropdownMenuItem<int>(
                                    value: index,
                                    child: Text(state.stateName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2)));
                              });

                              return DropdownButton<int>(
                                  isExpanded: true,
                                  items: list,
                                  onChanged: (int selected) {
                                    var _selectedItem = list[selected].value;
                                    setState(() {
                                      this.store.stateName =
                                          dropDownItemsMap[_selectedItem];
                                      this.store.stateId = this
                                          ._states
                                          .singleWhere((element) =>
                                              element.stateName ==
                                              this.store.stateName)
                                          .stateId;
                                      this.districtsInitialized = false;
                                      this.store.districtName = _MyHomePageState
                                          .districtNamePlaceholderText;
                                      this.store.districtId = -1;
                                    });
                                  },
                                  hint: new Text(
                                    this.store.stateName,
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  // child: FutureBuilder(
                                  dropdownColor: Colors.grey.shade800,
                                  iconEnabledColor: Colors.white);
                            }
                          },
                        ),
                        FutureBuilder(
                          future: getDistricts(this.store.stateId),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.data == null) {
                              return DropdownButton<String>(
                                isExpanded: true,
                                items: [],
                                // value: districtName,
                                hint: new Text(
                                  this.store.districtName,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              );
                            } else {
                              List<DropdownMenuItem<int>> list = [];
                              list.clear();
                              Map dropDownItemsMap = new Map();

                              snapshot.data.forEach((district) {
                                int index = snapshot.data.indexOf(district);
                                dropDownItemsMap[index] = district.districtName;

                                list.add(new DropdownMenuItem<int>(
                                    value: index,
                                    child: Text(district.districtName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2)));
                              });

                              return DropdownButton<int>(
                                  isExpanded: true,
                                  items: list,
                                  onChanged: (int selected) {
                                    var _selectedItem = list[selected].value;
                                    setState(() {
                                      this.store.districtName =
                                          dropDownItemsMap[_selectedItem];
                                      this.store.districtId = this
                                          ._districts
                                          .singleWhere((element) =>
                                              element.districtName ==
                                              this.store.districtName)
                                          .districtId;
                                    });
                                  },
                                  hint: new Text(
                                    this.store.districtName,
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  dropdownColor: Colors.grey.shade800,
                                  iconEnabledColor: Colors.white);
                            }
                          },
                        ),
                        new TextField(
                          decoration: new InputDecoration(
                              hintText: this.store.age == -1
                                  ? "Enter your age"
                                  : this.store.age.toString(),
                              hintStyle: Theme.of(context).textTheme.bodyText2),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          controller: this.ageController,
                        ),
                        new Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: new Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: new Text(
                                  "Notifications",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                            ),
                            Expanded(
                                child: new Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Transform.scale(
                                  scale: 0.7,
                                  child: Switch(
                                    value: this.store.notificationsEnabled,
                                    onChanged: (value) {
                                      setState(() {
                                        this.store.notificationsEnabled = value;
                                        updateNotifications(this.store);
                                      });
                                    },
                                    activeTrackColor: Colors.white,
                                    activeColor: Colors.white,
                                  )),
                            )),
                          ],
                        ),
                        new Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              new Expanded(
                                child: new Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: DropdownButton<int>(
                                      isExpanded: true,
                                      items:
                                          notificationFrequencyUnitToValuesMap[
                                                  this
                                                      .store
                                                      .notificationsFreqUnit]
                                              .map<DropdownMenuItem<int>>(
                                                  (num value) {
                                        String freqValueAsString =
                                            value.toString();
                                        return DropdownMenuItem<int>(
                                          value: value,
                                          child: Text(freqValueAsString,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2),
                                        );
                                      }).toList(),
                                      onChanged: (int selected) {
                                        setState(() {
                                          this.store.notificationsFreqValue =
                                              selected;
                                          updateNotifications(this.store);
                                        });
                                      },
                                      hint: new Text(
                                        this
                                            .store
                                            .notificationsFreqValue
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      dropdownColor: Colors.grey.shade800,
                                      iconEnabledColor: Colors.white),
                                ),
                              ),
                              new Flexible(
                                child: new Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: new DropdownButton<String>(
                                        isExpanded: true,
                                        items:
                                            notificationFrequencyUnitToValuesMap
                                                .keys
                                                .map<DropdownMenuItem<String>>(
                                                    (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2),
                                          );
                                        }).toList(),
                                        onChanged: (String selected) {
                                          setState(() {
                                            this.store.notificationsFreqUnit =
                                                selected;
                                            updateNotifications(this.store);
                                          });
                                        },
                                        hint: new Text(
                                          this.store.notificationsFreqUnit,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        dropdownColor: Colors.grey.shade800,
                                        iconEnabledColor: Colors.white)),
                              ),
                            ]),
                        new ElevatedButton(
                          child: Text(
                            'Find',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          onPressed: () => _pushSubmit(),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade900, // background
                          ),
                        ),
                        getNotificationStatusTextWidget()
                      ])));
        });
  }
}

final CowinApi cowinApi = createMyApi();

Future updateNotifications(
  StateStore stateStore,
) async {
  // if (notificationService == null) {
  // notificationService = NotificationService();
  // await notificationService.init();
  // }

  // final cron = Cron();
  // cron.schedule(Schedule.parse('0 * * * *'), () async {

  String notificationsTaskUniqueName = "myCowinNotifs";

  if (Platform.isAndroid) {
    Workmanager.cancelByUniqueName(notificationsTaskUniqueName);
  }
  if (!stateStore.notificationsEnabled) {
    return;
  }

  NotificationService notificationService = new NotificationService();
  await notificationService.init();
  await notificationService.requestPermissions();

  // String schedule;
  // switch (stateStore.notificationsFreqUnit) {
  //   case "minutes":
  //     schedule = "*/${stateStore.notificationsFreqValue} * * * *";
  //     break;
  //   case "hours":
  //     schedule = "* */${stateStore.notificationsFreqValue} * * *";
  //     break;
  //   case "days":
  //     schedule = "* * */${stateStore.notificationsFreqValue} * *";
  //     break;
  // }

  // if (cron != null) {
  //   cron.close();
  // }

  // Duration interval;
  // switch (stateStore.notificationsFreqUnit) {
  //   case "minutes":
  //     interval = Duration(minutes: stateStore.notificationsFreqValue);
  //     break;
  //   case "hours":
  //     interval = Duration(hours: stateStore.notificationsFreqValue);
  //     break;
  //   case "days":
  //     interval = Duration(days: stateStore.notificationsFreqValue);
  //     break;
  // }

  if (Platform.isAndroid) {
    Duration interval = new Duration(minutes: 15);
    Workmanager.registerPeriodicTask(
      notificationsTaskUniqueName,
      "registerNotificationTask",
      frequency: interval,
      initialDelay: interval,
    );
  }

  // cron = Cron();
  // cron.schedule(Schedule.parse(schedule), () async {
  //   if (stateStore.stateId != -1 && stateStore.age != -1) {
  // try {
  //   List<SessionCalendarEntrySchema> appointments =
  //       await getAppointmentsByDistrictForWeek(cowinApi, stateStore.stateId,
  //           stateStore.districtId, stateStore.age);
  //   if (appointments != null && appointments.length > 0) {
  //     int totalAvailability = 0;
  //     appointments.forEach((apt) {
  //       apt.sessions.forEach((sess) {
  //         totalAvailability += sess.availableCapacity;
  //       });
  //     });
  //     notificationService.showNotification("Appointments available.",
  //         "$totalAvailability appointments available in ${stateStore.districtName}, ${stateStore.stateName}.");
  //   }
  // } catch (Exception) {}
  //   }
  // });
}

void callbackDispatcher() {
  Workmanager.executeTask((task, inputData) async {
    print("Executing callback");
    await sendNotificationIfAptsAvailable();
  });
}

Future sendNotificationIfAptsAvailable() async {
  try {
    StateStore stateStore = await StateStore.fromStore();

    print(stateStore.stateId);
    print(stateStore.districtId);
    print(stateStore.age);
    print(stateStore.notificationsEnabled);
    if (stateStore.stateId == -1 ||
        stateStore.districtId == -1 ||
        stateStore.age == -1 ||
        !stateStore.notificationsEnabled) {
      return;
    }

    List<SessionCalendarEntrySchema> appointments =
        await getAppointmentsByDistrictForWeek(cowinApi, stateStore.stateId,
            stateStore.districtId, stateStore.age);
    if (appointments != null && appointments.length > 0) {
      int totalAvailability = 0;
      appointments.forEach((apt) {
        apt.sessions.forEach((sess) {
          totalAvailability += sess.availableCapacity;
        });
      });

      await new NotificationService().showNotification(
          "Appointments available.",
          "$totalAvailability appointments available in ${stateStore.districtName}, ${stateStore.stateName}.");
    }
  } catch (Exception) {}
}

class StateStore {
  String stateName;
  num stateId;
  String districtName;
  num districtId;
  int pinCode;
  num age;
  bool notificationsEnabled;
  String notificationsFreqUnit;
  int notificationsFreqValue;

  StateStore(
      this.stateName,
      this.stateId,
      this.districtName,
      this.districtId,
      this.pinCode,
      this.age,
      this.notificationsEnabled,
      this.notificationsFreqUnit,
      this.notificationsFreqValue);

  static Future<StateStore> fromStore() async {
    final prefs = await SharedPreferences.getInstance();
    String stateName = prefs.getString('sName') ?? null;
    if (stateName == null) {
      return null;
    }

    num stateId = prefs.getInt('sId') ?? -1;
    String districtName = prefs.getString('dName') ?? null;
    num districtId = prefs.getInt('dId') ?? -1;
    num age = prefs.getInt('age') ?? -1;

    bool notifEnabled = prefs.getBool('nE') ?? false;
    String notifUnit = prefs.getString('nFU') ?? null;
    int notifValue = prefs.getInt('nFV') ?? -1;

    return new StateStore(stateName, stateId, districtName, districtId, 1, age,
        notifEnabled, notifUnit, notifValue);
  }

  Future saveStore() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sName', stateName);
    prefs.setInt('sId', stateId);
    prefs.setString('dName', districtName);
    prefs.setInt('dId', districtId);
    prefs.setInt('age', age);
    prefs.setInt('pin', pinCode);
    prefs.setBool("nE", notificationsEnabled);
    prefs.setString("nFU", notificationsFreqUnit);
    prefs.setInt("nFV", notificationsFreqValue);
  }
}
