//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:cowin_api/model/center_response_schema.dart';
import 'package:cowin_api/model/inline_object.dart';
import 'package:cowin_api/model/inline_object1.dart';
import 'package:cowin_api/model/inline_response200.dart';
import 'package:cowin_api/model/inline_response2001.dart';
import 'package:cowin_api/model/inline_response2002.dart';
import 'package:cowin_api/model/inline_response2002_states.dart';
import 'package:cowin_api/model/inline_response2003.dart';
import 'package:cowin_api/model/inline_response2003_districts.dart';
import 'package:cowin_api/model/inline_response400.dart';
import 'package:cowin_api/model/session_calendar_entry_schema.dart';
import 'package:cowin_api/model/session_calendar_entry_schema_sessions.dart';
import 'package:cowin_api/model/session_response_schema.dart';
import 'package:cowin_api/model/session_response_schema_all_of.dart';
import 'package:cowin_api/model/vaccine_fee_schema.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  CenterResponseSchema,
  InlineObject,
  InlineObject1,
  InlineResponse200,
  InlineResponse2001,
  InlineResponse2002,
  InlineResponse2002States,
  InlineResponse2003,
  InlineResponse2003Districts,
  InlineResponse400,
  SessionCalendarEntrySchema,
  SessionCalendarEntrySchemaSessions,
  SessionResponseSchema,
  SessionResponseSchemaAllOf,
  VaccineFeeSchema,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
