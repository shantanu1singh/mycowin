import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:cowin_api/api.dart';
import 'package:cowin_api/model/session_calendar_entry_schema.dart';
import 'package:cowin_api/model/inline_response2003_districts.dart';
import 'package:cowin_api/model/inline_response2002_states.dart';
import 'package:flutter/services.dart';
import 'package:workmanager/workmanager.dart';
import 'dart:io' show Platform;
import 'tabview.dart';
import 'notification_service.dart';
import 'state_store.dart';

final CowinApi cowinApi = createMyApi();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Workmanager.initialize(
      callbackDispatcher, // The top level function, aka callbackDispatcher
      isInDebugMode: false // This should be false
      );
  runApp(MyCowin());
}

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

BaseOptions createDioOptions(
    String baseUrl, int connectionTimeout, int connectionReadTimeout) {
  return BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: connectionTimeout,
    receiveTimeout: connectionReadTimeout,
  );
}

CowinApi createMyApi() {
  const baseUrl = 'https://cdn-api.co-vin.in/api';
  final options = createDioOptions(baseUrl, 60000, 60000);
  final dio = createDio(options);
  return CowinApi(dio: dio);
}

class MyCowin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
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
        home: MyCowinHomePage(title: 'MyCowin'),
        routes: routes,
        debugShowCheckedModeBanner: false);
  }
}

class MyCowinHomePage extends StatefulWidget {
  MyCowinHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyCowinHomePageState createState() => _MyCowinHomePageState();
}

class _MyCowinHomePageState extends State<MyCowinHomePage> {
  final ageController = TextEditingController();

  var _states = <InlineResponse2002States>[];

  bool districtsInitialized = false;
  var _districts = <InlineResponse2003Districts>[];

  static const String stateNamePlaceholderText = "Choose a state..";
  static const String districtNamePlaceholderText = "Choose a district..";

  final Map<String, List<num>> notificationFrequencyUnitToValuesMap = {
    "hours": new List<int>.generate(23, (i) => i + 1),
    "minutes": new List<int>.generate(45, (i) => i + 15),
    "days": new List<int>.generate(7, (i) => i + 1),
  };

  bool stateStoreInitialized = false;

  StateStore store = new StateStore(stateNamePlaceholderText, -1,
      districtNamePlaceholderText, -1, -1, -1, false, "hours", 1);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: refreshFromStore(),
        builder: (context, AsyncSnapshot<void> snapshot) {
          return Scaffold(
              appBar: AppBar(
                title: Text(widget.title,
                    style: Theme.of(context).textTheme.subtitle2),
                backgroundColor: Colors.grey.shade800,
                centerTitle: true,
              ),
              body: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                  color: Colors.grey.shade700,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        getStatesPickerWidget(),
                        getDistrictsPickerWidget(),
                        getAgeTextFieldWidget(),
                        getNotificationsRowWidget(),
                        getNotificationFrequencyRowWidget(),
                        getNotificationStatusTextWidget(),
                        getFindButtonWidget(),
                      ])));
        });
  }

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
      throw Exception('Failed to get districts');
    }
  }

  Future saveState() async {
    if (this.ageController.text != null && this.ageController.text.isNotEmpty) {
      this.store.age = num.parse(this.ageController.text);
    }
    await this.store.saveStore();
  }

  Future pushSubmit() async {
    await saveState();
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

  FutureBuilder getStatesPickerWidget() {
    return FutureBuilder(
      future: getStates(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return DropdownButton<String>(
            isExpanded: true,
            items: [],
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
            int index = snapshot.data.indexOf(state);
            dropDownItemsMap[index] = state.stateName;

            list.add(new DropdownMenuItem<int>(
                value: index,
                child: Text(state.stateName,
                    style: Theme.of(context).textTheme.subtitle2)));
          });

          return DropdownButton<int>(
              isExpanded: true,
              items: list,
              onChanged: (int selected) {
                var _selectedItem = list[selected].value;
                setState(() {
                  this.store.stateName = dropDownItemsMap[_selectedItem];
                  this.store.stateId = this
                      ._states
                      .singleWhere((element) =>
                          element.stateName == this.store.stateName)
                      .stateId;
                  this.districtsInitialized = false;
                  this.store.districtName =
                      _MyCowinHomePageState.districtNamePlaceholderText;
                  this.store.districtId = -1;
                });
              },
              hint: new Text(
                this.store.stateName,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              dropdownColor: Colors.grey.shade800,
              iconEnabledColor: Colors.white);
        }
      },
    );
  }

  FutureBuilder getDistrictsPickerWidget() {
    return FutureBuilder(
      future: getDistricts(this.store.stateId),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return DropdownButton<String>(
            isExpanded: true,
            items: [],
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
                    style: Theme.of(context).textTheme.subtitle2)));
          });

          return DropdownButton<int>(
              isExpanded: true,
              items: list,
              onChanged: (int selected) {
                var _selectedItem = list[selected].value;
                setState(() {
                  this.store.districtName = dropDownItemsMap[_selectedItem];
                  this.store.districtId = this
                      ._districts
                      .singleWhere((element) =>
                          element.districtName == this.store.districtName)
                      .districtId;
                });
              },
              hint: new Text(
                this.store.districtName,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              dropdownColor: Colors.grey.shade800,
              iconEnabledColor: Colors.white);
        }
      },
    );
  }

  TextField getAgeTextFieldWidget() {
    return new TextField(
      decoration: new InputDecoration(
          hintText: this.store.age == -1
              ? "Enter your age"
              : this.store.age.toString(),
          hintStyle: Theme.of(context).textTheme.bodyText2),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      controller: this.ageController,
    );
  }

  Row getNotificationsRowWidget() {
    return new Row(
      children: <Widget>[
        SizedBox(
          child: new Padding(
            padding: const EdgeInsets.only(left: 50.0, top: 25.0),
            child: new Text(
              "Notifications",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ),
        SizedBox(
            width: 100,
            child: new Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 25.0),
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
    );
  }

  Row getNotificationFrequencyRowWidget() {
    return new Row(children: <Widget>[
      SizedBox(
        child: new Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: new Text(
            "Every",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ),
      new Flexible(
        child: new Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 20.0),
          child: DropdownButton<int>(
              isExpanded: true,
              items: notificationFrequencyUnitToValuesMap[
                      this.store.notificationsFreqUnit]
                  .map<DropdownMenuItem<int>>((num value) {
                String freqValueAsString = value.toString();
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(freqValueAsString,
                      style: Theme.of(context).textTheme.bodyText2),
                );
              }).toList(),
              onChanged: (int selected) {
                setState(() {
                  this.store.notificationsFreqValue = selected;
                  updateNotifications(this.store);
                });
              },
              hint: new Text(
                this.store.notificationsFreqValue.toString(),
                style: Theme.of(context).textTheme.bodyText2,
              ),
              dropdownColor: Colors.grey.shade800,
              iconEnabledColor: Colors.white),
        ),
      ),
      new Flexible(
        child: new Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 20.0),
            child: new DropdownButton<String>(
                isExpanded: true,
                items: notificationFrequencyUnitToValuesMap.keys
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        style: Theme.of(context).textTheme.bodyText2),
                  );
                }).toList(),
                onChanged: (String selected) {
                  setState(() {
                    this.store.notificationsFreqUnit = selected;
                    updateNotifications(this.store);
                  });
                },
                hint: new Text(
                  this.store.notificationsFreqUnit,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                dropdownColor: Colors.grey.shade800,
                iconEnabledColor: Colors.white)),
      ),
    ]);
  }

  Align getNotificationStatusTextWidget() {
    if (this.store.notificationsEnabled) {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Notifications are enabled",
                style: TextStyle(fontSize: 15, color: Colors.greenAccent),
              )));
    } else {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Notifications are disabled",
                style: TextStyle(fontSize: 15, color: Colors.amber),
              )));
    }
  }

  Flexible getFindButtonWidget() {
    return new Flexible(
        child: new Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 20.0, top: 20),
            child: new ElevatedButton(
              child: Text(
                'Find',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              onPressed: () => pushSubmit(),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade900, // background
              ),
            )));
  }
}

Future updateNotifications(
  StateStore stateStore,
) async {
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

  if (Platform.isAndroid) {
    Duration interval = new Duration(minutes: 15);
    Workmanager.registerPeriodicTask(
      notificationsTaskUniqueName,
      "registerNotificationTask",
      frequency: interval,
      initialDelay: interval,
    );
  }
}

void callbackDispatcher() {
  Workmanager.executeTask((task, inputData) async {
    print("Executing callback");
    await sendNotificationIfAptsAvailable();
    return Future.value(true);
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
  } catch (e) {
    print("Exception while running sendNotificationIfAptsAvailable");
    print(e);
  }
}
