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

class AppointmentListViewArguments {
  final CowinApi cowinApi;
  final num stateId;
  final num districtId;
  final int pinCode;
  final num age;

  AppointmentListViewArguments(
      this.cowinApi, this.stateId, this.districtId, this.pinCode, this.age);
}

class AppointmentListView extends StatefulWidget {
  AppointmentListView(
      // {Key key, this.cowinApi, this.stateId, this.districtId, this.pinCode})
      {Key key})
      : super(key: key);

  static const String routeName = "/AppointmentListView";
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
  _AppointmentListViewState createState() => _AppointmentListViewState();
}

// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigate back to first route when tapped.
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }

class _AppointmentListViewState extends State<AppointmentListView> {
  final _appointments = <SessionCalendarEntrySchema>[];
  CowinApi cowinApi;
  // final num stateId;
  // final num districtId;
  // final int pinCode;

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
    final AppointmentListViewArguments args = ModalRoute.of(context)
        .settings
        .arguments as AppointmentListViewArguments;
    cowinApi = args.cowinApi;

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
          title: Text("Appointments",
              style: Theme.of(context).textTheme.subtitle2),
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
        ),
        body: Container(
          // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
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
          child: FutureBuilder(
            future: getAppointmentsByDistrict(
                args.cowinApi, args.stateId, args.districtId, args.age),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return CircularProgressIndicator();
              } else if (snapshot.data.length == 0) {
                return Column(children: <Widget>[
                  Text(
                      "Sorry, we couldn't find any appointments for today. Please try again later.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle2)
                ]);
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(snapshot.data[index].name,
                          style: Theme.of(context).textTheme.subtitle1),
                      subtitle: Text(
                          snapshot.data[index].districtName +
                              ", " +
                              snapshot.data[index].stateName +
                              " | " +
                              snapshot.data[index].feeType.toString(),
                          style: Theme.of(context).textTheme.bodyText2),
                      trailing: Text(
                          "+" +
                              snapshot
                                  .data[index].sessions.first.availableCapacity
                                  .toString(),
                          style: Theme.of(context).textTheme.bodyText1),
                      tileColor: Colors.lightBlue.shade900,
                    );
                  },
                );
              }
            },
          ),
        )
        // body: Center(
        //   // Center is a layout widget. It takes a single child and positions it
        //   // in the middle of the parent.
        //   child: Column(
        //     // Column is also a layout widget. It takes a list of children and
        //     // arranges them vertically. By default, it sizes itself to fit its
        //     // children horizontally, and tries to be as tall as its parent.
        //     //
        //     // Invoke "debug painting" (press "p" in the console, choose the
        //     // "Toggle Debug Paint" action from the Flutter Inspector in Android
        //     // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        //     // to see the wireframe for each widget.
        //     //
        //     // Column has various properties to control how it sizes itself and
        //     // how it positions its children. Here we use mainAxisAlignment to
        //     // center the children vertically; the main axis here is the vertical
        //     // axis because Columns are vertical (the cross axis would be
        //     // horizontal).
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Text(
        //         'You have pushed the button this many times:',
        //       ),
        //       Text(
        //         '$_counter',
        //         style: Theme.of(context).textTheme.headline4,
        //       ),
        //     ],
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
