import 'package:flutter/material.dart';
import 'package:cowin_api/api.dart';
import 'package:cowin_api/model/session_calendar_entry_schema.dart';
import 'package:intl/intl.dart';
import 'package:built_collection/built_collection.dart';

Future<List<SessionCalendarEntrySchema>> getAppointmentsByDistrict(
    CowinApi cowinApi, num stateId, num districtId, num age) async {
  var appointmentApi = cowinApi.getAppointmentAvailabilityAPIsApi();

  DateTime now = new DateTime.now();
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final String formatted = formatter.format(now);
  // final String formatted = formatter.format(new DateTime(2021, 5, 10));
  // var response = await appointmentApi.calendarByPin("110070", formatted);
  var response =
      await appointmentApi.calendarByDistrict(districtId.toString(), formatted);

  if (response.statusCode == 200) {
    var des1 = BuiltList<SessionCalendarEntrySchema>.from(response
        .data.asMap["centers"]
        .map((value) => cowinApi.serializers
            .deserializeWith(SessionCalendarEntrySchema.serializer, value))
        .toList(growable: false));

    var des2 = des1.where((x) {
      var todaysSession = x.sessions.where((y) => y.date == formatted);
      return todaysSession != null &&
          todaysSession.length == 1 &&
          todaysSession.first.minAgeLimit <= age &&
          todaysSession.first.availableCapacity > 0;
    }).toList();
    return des2;
  } else {
    throw Exception('Failed to get appointments');
  }
}

Future<List<SessionCalendarEntrySchema>> getAppointmentsByDistrictForWeek(
    CowinApi cowinApi, num stateId, num districtId, num age) async {
  var appointmentApi = cowinApi.getAppointmentAvailabilityAPIsApi();

  DateTime now = new DateTime.now();
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final String formatted = formatter.format(now);
  // final String formatted = formatter.format(new DateTime(2021, 5, 10));
  // var response = await appointmentApi.calendarByPin("110070", formatted);
  var response =
      await appointmentApi.calendarByDistrict(districtId.toString(), formatted);

  if (response.statusCode == 200) {
    var des1 = BuiltList<SessionCalendarEntrySchema>.from(response
        .data.asMap["centers"]
        .map((value) => cowinApi.serializers
            .deserializeWith(SessionCalendarEntrySchema.serializer, value))
        .toList(growable: false));

    var des2 = des1.where((x) {
      var todaysSession = x.sessions
          .where((y) => y.availableCapacity > 0 && y.minAgeLimit <= age);
      return todaysSession != null && todaysSession.length > 0;
    }).toList();
    return des2;
  } else {
    throw Exception('Failed to get appointments');
  }
}

class AppointmentListTabbedViewArguments {
  final CowinApi cowinApi;
  final num stateId;
  final num districtId;
  final int pinCode;
  final num age;

  AppointmentListTabbedViewArguments(
      this.cowinApi, this.stateId, this.districtId, this.pinCode, this.age);
}

class AppointmentListTabbedView extends StatefulWidget {
  AppointmentListTabbedView(
      // {Key key, this.cowinApi, this.stateId, this.districtId, this.pinCode})
      {Key key})
      : super(key: key);

  static const String routeName = "/AppointmentListTabbedView";
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  // final CowinApi cowinApi;
  // final num stateId;
  // final num districtId;
  // final int pinCode;

  // @override
  // _AppointmentListViewState createState() =>
  //     _AppointmentListViewState(cowinApi, stateId, districtId, pinCode);

  @override
  _AppointmentListTabbedViewState createState() =>
      _AppointmentListTabbedViewState();
}

class _AppointmentListTabbedViewState extends State<AppointmentListTabbedView>
    with AutomaticKeepAliveClientMixin<AppointmentListTabbedView> {
  final _appointments = <SessionCalendarEntrySchema>[];
  CowinApi cowinApi;
  // final num stateId;
  // final num districtId;
  // final int pinCode;

  @override
  bool get wantKeepAlive => true;

  Future<List<SessionCalendarEntrySchema>> getAppointmentsByDistrict1(
      num stateId, num districtId, num age) async {
    var appointmentApi = cowinApi.getAppointmentAvailabilityAPIsApi();

    DateTime now = new DateTime.now();
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(now);
    // final String formatted = formatter.format(new DateTime(2021, 5, 10));
    // var response = await appointmentApi.calendarByPin("110070", formatted);
    var response = await appointmentApi.calendarByDistrict(
        districtId.toString(), formatted);

    if (response.statusCode == 200) {
      var des1 = BuiltList<SessionCalendarEntrySchema>.from(response
          .data.asMap["centers"]
          .map((value) => cowinApi.serializers
              .deserializeWith(SessionCalendarEntrySchema.serializer, value))
          .toList(growable: false));

      var des2 = des1.where((x) {
        var todaysSession = x.sessions.where((y) => y.date == formatted);
        return todaysSession != null &&
            todaysSession.length == 1 &&
            todaysSession.first.minAgeLimit <= age &&
            todaysSession.first.availableCapacity > 0;
      }).toList();
      return des2;
    } else {
      throw Exception('Failed to get appointments');
    }
  }

  Future<List<SessionCalendarEntrySchema>> getAppointmentsByPin(
      int pinCode) async {
    var appointmentApi = cowinApi.getAppointmentAvailabilityAPIsApi();

    DateTime now = new DateTime.now();
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(now);
    // var response = await appointmentApi.calendarByPin("110070", formatted);
    var response =
        await appointmentApi.calendarByPin(pinCode.toString(), formatted);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      //
      var des1 = BuiltList<SessionCalendarEntrySchema>.from(response
          .data.asMap["centers"]
          .map((value) => cowinApi.serializers
              .deserializeWith(SessionCalendarEntrySchema.serializer, value))
          .toList(growable: false));

      return des1.toList();
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to get appointments');
    }
  }

  @override
  Widget build(BuildContext context) {
    final AppointmentListTabbedViewArguments args = ModalRoute.of(context)
        .settings
        .arguments as AppointmentListTabbedViewArguments;
    cowinApi = args.cowinApi;

    DateTime now = new DateTime.now();
    DateTime dateTime = now;
    final DateFormat formatter = DateFormat('dd/MM');
    final DateFormat incomingFormat = DateFormat('dd-MM-yyyy');

    List<Tab> tabs = <Tab>[];

    for (int i = 0; i < 7; i++) {
      tabs.add(Tab(
          // text: formatter.format(dateTime)
          child: Text(formatter.format(dateTime),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2)));
      dateTime = dateTime.add(Duration(days: 1));
    }

    return FutureBuilder<List<SessionCalendarEntrySchema>>(
        future: getAppointmentsByDistrictForWeek(
            cowinApi, args.stateId, args.districtId, args.age),
        builder: (context,
            AsyncSnapshot<List<SessionCalendarEntrySchema>> snapshot) {
          if (snapshot.hasData) {
            var appointments = snapshot.data;
            Map<String, List<SessionCalendarEntrySchema>>
                dateToAppointmentsMap =
                new Map<String, List<SessionCalendarEntrySchema>>();

            if (appointments != null && appointments.length > 0) {
              appointments.forEach((apt) {
                apt.sessions.forEach((sess) {
                  if (sess.availableCapacity == 0) {
                    return;
                  }

                  DateTime sessionDateTime = incomingFormat.parse(sess.date);
                  String mapKey = formatter.format(sessionDateTime);

                  if (dateToAppointmentsMap[mapKey] == null) {
                    dateToAppointmentsMap[mapKey] = [];
                  }

                  dateToAppointmentsMap[mapKey].add(apt);
                });
              });
            }

            return DefaultTabController(
              length: tabs.length,
              // The Builder widget is used to have a different BuildContext to access
              // closest DefaultTabController.
              child: Builder(builder: (BuildContext context) {
                final TabController tabController =
                    DefaultTabController.of(context);
                tabController.addListener(() {
                  if (!tabController.indexIsChanging) {
                    // Your code goes here.
                    // To get index of current tab use tabController.index
                  }
                });
                return Scaffold(
                  appBar: AppBar(
                    // Here we take the value from the MyHomePage object that was created by
                    // the App.build method, and use it to set our appbar title.
                    title: Text("Appointments",
                        style: Theme.of(context).textTheme.subtitle2),
                    backgroundColor: Colors.grey.shade800,
                    centerTitle: true,
                    bottom: TabBar(
                      tabs: tabs,
                      isScrollable: true,
                      indicatorColor: Colors.greenAccent,
                    ),
                  ),
                  body: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                    color: Colors.grey.shade700,
                    child: TabBarView(
                      children: tabs.map(
                        (Tab tab) {
                          var aptsOnDate = dateToAppointmentsMap[tab.text];
                          if (aptsOnDate == null || aptsOnDate.length == 0) {
                            return Align(
                              alignment: Alignment.center,
                              child: Text(
                                  "Sorry, we couldn't find any appointments for the day. Please try again later.",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2),
                            );
                            // return Column(children: <Widget>[
                            //   Text(
                            //       "Sorry, we couldn't find any appointments for today. Please try again later.",
                            //       textAlign: TextAlign.center,
                            //       style: Theme.of(context).textTheme.subtitle2)
                            // ]);
                          } else {
                            return ListView.builder(
                              itemCount: aptsOnDate.length,
                              itemBuilder: (BuildContext context, int index) {
                                int availableCapacity = aptsOnDate[index]
                                    .sessions
                                    .singleWhere((x) =>
                                        formatter.format(
                                            incomingFormat.parse(x.date)) ==
                                        tab.text)
                                    .availableCapacity;
                                return ListTile(
                                  title: Text(aptsOnDate[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1),
                                  subtitle: Text(
                                      aptsOnDate[index].districtName +
                                          ", " +
                                          aptsOnDate[index].stateName +
                                          " | " +
                                          aptsOnDate[index].feeType.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2),
                                  trailing: Text(
                                      "+" + availableCapacity.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                  tileColor: Colors.grey.shade700,
                                );
                              },
                            );
                          }
                        },
                      ).toList(),
                    ),
                  ),
                );
              }),
            );
          } else {
            return Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                color: Colors.grey.shade800,
                child: Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey.shade800,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.white),
                    )));
          }
        });
  }
}
