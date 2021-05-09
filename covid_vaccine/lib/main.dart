import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:cowin_api/api.dart';
import 'package:cowin_api/model/session_calendar_entry_schema.dart';
import 'package:cowin_api/model/inline_response2003_districts.dart';
import 'package:cowin_api/model/inline_response2002_states.dart';
import 'package:intl/intl.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/services.dart';
import 'package:cron/cron.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'listview.dart';

void main() {
  final cron = Cron();
  cron.schedule(Schedule.parse('0 * * * *'), () async {
    print('Runs every hour');
    final prefs = await SharedPreferences.getInstance();

    String stateName = prefs.getString('sName') ?? null;
    num stateId = prefs.getInt('sId') ?? -1;
    String districtName = prefs.getString('dName') ?? null;
    num districtId = prefs.getInt('dId') ?? -1;
    num age = prefs.getInt('age') ?? -1;

    if (stateId != -1 && districtId != -1) {
      var appointments = await getAppointmentsByDistrictForWeek(
          cowinApi, stateId, districtId, age);
      if (appointments != null && appointments.length > 0) {}
    }
  });

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
      AppointmentListView.routeName: (BuildContext context) =>
          new AppointmentListView(),
    };
    return MaterialApp(
        title: 'COVID Vaccination Centers',
        theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: TextTheme(
              headline6: TextStyle(fontSize: 30, color: Colors.white),
              subtitle1: TextStyle(fontSize: 17, color: Colors.white),
              subtitle2: TextStyle(fontSize: 20, color: Colors.white),
              bodyText1: TextStyle(fontSize: 20, color: Colors.green),
              bodyText2: TextStyle(fontSize: 15, color: Colors.white)),
        ),
        home: MyHomePage(title: 'COVID Vaccination Centers'),
        routes: routes);
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
  var _districts = <InlineResponse2003Districts>[];

  num stateId = -1;
  String stateName = "Choose a state..";

  num districtId;
  String districtName = "Choose a district..";

  int pinCode;

  Future<List<InlineResponse2002States>> getStates() async {
    // final CowinApi cowinApi1 = createMyApi();
    // var metadataApi = cowinApi1.getMetadataAPIsApi();
    // var appointmentApi = cowinApi.getAppointmentAvailabilityAPIsApi();

    // DateTime now = new DateTime.now();
    // final DateFormat formatter = DateFormat('dd-MM-yyyy');
    // final String formatted = formatter.format(now);
    // var response1 = await appointmentApi.calendarByPin("110070", formatted);

    var metadataApi = cowinApi.getMetadataAPIsApi();

    var response = await metadataApi.states();

    if (response.statusCode == 200) {
      _states = response.data.states.toList();
      return _states;
    } else {
      throw Exception('Failed to get states');
    }
  }

  Future<List<InlineResponse2003Districts>> getDistricts(int stateId) async {
    if (stateId == -1) {
      return null;
    }

    var metadataApi = cowinApi.getMetadataAPIsApi();
    var response = await metadataApi.districts(stateId.toString());
    if (response.statusCode == 200) {
      _districts = response.data.districts.toList();
      return _districts;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to get districts');
    }
  }

  Future _pushSubmit() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sName', stateName);
    prefs.setInt('sId', stateId);
    prefs.setString('dName', districtName);
    prefs.setInt('dId', districtId);

    num age = num.parse(ageController.text);
    prefs.setInt('age', age);

    Navigator.pushNamed(
      context,
      AppointmentListView.routeName,
      arguments: AppointmentListViewArguments(
        cowinApi,
        stateId,
        districtId,
        pinCode,
        age,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title:
              Text(widget.title, style: Theme.of(context).textTheme.subtitle2),
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.0, 0.7],
                colors: [
                  // Color(0xFFF12711),
                  // Color(0xFFf5af19),
                  Colors.blue.shade50,
                  Colors.blue.shade900,
                ],
              ),
            ),
            child: Column(children: <Widget>[
              FutureBuilder(
                future: getStates(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    // return CircularProgressIndicator();
                    return DropdownButton<String>(
                      isExpanded: true,
                      items: [],
                      value: stateName,
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
                              style: Theme.of(context).textTheme.subtitle2)));
                    });

                    return DropdownButton<int>(
                        isExpanded: true,
                        items: list,
                        onChanged: (int selected) {
                          var _selectedItem = list[selected].value;
                          setState(() {
                            stateName = dropDownItemsMap[_selectedItem];
                            stateId = _states
                                .singleWhere(
                                    (element) => element.stateName == stateName)
                                .stateId;
                          });
                        },
                        hint: new Text(
                          stateName,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        // child: FutureBuilder(
                        dropdownColor: Colors.lightBlue.shade400);
                  }
                },
              ),
              FutureBuilder(
                future: getDistricts(stateId),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return DropdownButton<String>(
                      isExpanded: true,
                      items: [],
                      value: districtName,
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
                            districtName = dropDownItemsMap[_selectedItem];
                            districtId = _districts
                                .singleWhere((element) =>
                                    element.districtName == districtName)
                                .districtId;
                          });
                        },
                        hint: new Text(
                          districtName,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        dropdownColor: Colors.lightBlue.shade400);
                  }
                },
              ),
              new TextField(
                decoration: new InputDecoration(hintText: "Enter your age"),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                controller: ageController,
              ),
              new ElevatedButton(
                child: Text('Submit',
                    style: Theme.of(context).textTheme.subtitle2),
                onPressed: () => _pushSubmit(),
              ),
            ])));
  }
}

final CowinApi cowinApi = createMyApi();
