//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:cowin_api/api.dart';
import 'package:cowin_api/api/appointment_availability_apis_api.dart';
import 'package:test/test.dart';


/// tests for AppointmentAvailabilityAPIsApi
void main() {
  final instance = CowinApi().getAppointmentAvailabilityAPIsApi();

  group(AppointmentAvailabilityAPIsApi, () {
    // Get vaccination sessions by district for 7 days
    //
    // API to get planned vaccination sessions for 7 days from a specific date in a given district.
    //
    //Future<JsonObject> calendarByDistrict(String districtId, String date, { String acceptLanguage }) async
    test('test calendarByDistrict', () async {
      // TODO
    });

    // Get vaccination sessions by PIN for 7 days
    //
    // API to get planned vaccination sessions for 7 days from a specific date in a given pin.
    //
    //Future<JsonObject> calendarByPin(String pincode, String date, { String acceptLanguage }) async
    test('test calendarByPin', () async {
      // TODO
    });

    // Get vaccination sessions by district
    //
    // API to get planned vaccination sessions on a specific date in a given district.
    //
    //Future<JsonObject> findByDistrict(String districtId, String date, { String acceptLanguage }) async
    test('test findByDistrict', () async {
      // TODO
    });

    // Get vaccination sessions by PIN
    //
    // API to get planned vaccination sessions on a specific date in a given pin.
    //
    //Future<JsonObject> findByPin(String pincode, String date, { String acceptLanguage }) async
    test('test findByPin', () async {
      // TODO
    });

  });
}
