//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:cowin_api/model/session_calendar_entry_schema_sessions.dart';
import 'package:cowin_api/model/vaccine_fee_schema.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_calendar_entry_schema.g.dart';

abstract class SessionCalendarEntrySchema
    implements
        Built<SessionCalendarEntrySchema, SessionCalendarEntrySchemaBuilder> {
  @BuiltValueField(wireName: r'center_id')
  num get centerId;

  @BuiltValueField(wireName: r'name')
  String get name;

  /// Name in preferred language as specified in Accept-Language header parameter.
  @nullable
  @BuiltValueField(wireName: r'name_l')
  String get nameL;

  @BuiltValueField(wireName: r'state_name')
  String get stateName;

  /// State name in preferred language as specified in Accept-Language header parameter.
  @nullable
  @BuiltValueField(wireName: r'state_name_l')
  String get stateNameL;

  @BuiltValueField(wireName: r'district_name')
  String get districtName;

  /// District name in preferred language as specified in Accept-Language header parameter.
  @nullable
  @BuiltValueField(wireName: r'district_name_l')
  String get districtNameL;

  @BuiltValueField(wireName: r'block_name')
  String get blockName;

  /// Block name in preferred language as specified in Accept-Language header parameter.
  @nullable
  @BuiltValueField(wireName: r'block_name_l')
  String get blockNameL;

  @BuiltValueField(wireName: r'pincode')
  num get pincode;

  @nullable
  @BuiltValueField(wireName: r'lat')
  double get lat;

  @nullable
  @BuiltValueField(wireName: r'long')
  double get long;

  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  String get to;

  /// Fee charged for vaccination
  @BuiltValueField(wireName: r'fee_type')
  SessionCalendarEntrySchemaFeeTypeEnum get feeType;
  // enum feeTypeEnum {  Free,  Paid,  };

  @nullable
  @BuiltValueField(wireName: r'vaccine_fees')
  BuiltSet<VaccineFeeSchema> get vaccineFees;

  @BuiltValueField(wireName: r'sessions')
  BuiltList<SessionCalendarEntrySchemaSessions> get sessions;

  SessionCalendarEntrySchema._();

  static void _initializeBuilder(SessionCalendarEntrySchemaBuilder b) => b;

  factory SessionCalendarEntrySchema(
          [void updates(SessionCalendarEntrySchemaBuilder b)]) =
      _$SessionCalendarEntrySchema;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionCalendarEntrySchema> get serializer =>
      _$SessionCalendarEntrySchemaSerializer();
}

class _$SessionCalendarEntrySchemaSerializer
    implements StructuredSerializer<SessionCalendarEntrySchema> {
  @override
  final Iterable<Type> types = const [
    SessionCalendarEntrySchema,
    _$SessionCalendarEntrySchema
  ];
  @override
  final String wireName = r'SessionCalendarEntrySchema';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SessionCalendarEntrySchema object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    result
      ..add(r'center_id')
      ..add(serializers.serialize(object.centerId,
          specifiedType: const FullType(num)));
    result
      ..add(r'name')
      ..add(serializers.serialize(object.name,
          specifiedType: const FullType(String)));
    if (object.nameL != null) {
      result
        ..add(r'name_l')
        ..add(serializers.serialize(object.nameL,
            specifiedType: const FullType(String)));
    }
    result
      ..add(r'state_name')
      ..add(serializers.serialize(object.stateName,
          specifiedType: const FullType(String)));
    if (object.stateNameL != null) {
      result
        ..add(r'state_name_l')
        ..add(serializers.serialize(object.stateNameL,
            specifiedType: const FullType(String)));
    }
    result
      ..add(r'district_name')
      ..add(serializers.serialize(object.districtName,
          specifiedType: const FullType(String)));
    if (object.districtNameL != null) {
      result
        ..add(r'district_name_l')
        ..add(serializers.serialize(object.districtNameL,
            specifiedType: const FullType(String)));
    }
    result
      ..add(r'block_name')
      ..add(serializers.serialize(object.blockName,
          specifiedType: const FullType(String)));
    if (object.blockNameL != null) {
      result
        ..add(r'block_name_l')
        ..add(serializers.serialize(object.blockNameL,
            specifiedType: const FullType(String)));
    }
    result
      ..add(r'pincode')
      ..add(serializers.serialize(object.pincode,
          specifiedType: const FullType(num)));
    if (object.lat != null) {
      result
        ..add(r'lat')
        ..add(serializers.serialize(object.lat,
            specifiedType: const FullType(double)));
    }
    if (object.long != null) {
      result
        ..add(r'long')
        ..add(serializers.serialize(object.long,
            specifiedType: const FullType(double)));
    }
    result
      ..add(r'from')
      ..add(serializers.serialize(object.from,
          specifiedType: const FullType(String)));
    result
      ..add(r'to')
      ..add(serializers.serialize(object.to,
          specifiedType: const FullType(String)));
    result
      ..add(r'fee_type')
      ..add(serializers.serialize(object.feeType,
          specifiedType:
              const FullType(SessionCalendarEntrySchemaFeeTypeEnum)));
    if (object.vaccineFees != null) {
      result
        ..add(r'vaccine_fees')
        ..add(serializers.serialize(object.vaccineFees,
            specifiedType:
                const FullType(BuiltSet, [FullType(VaccineFeeSchema)])));
    }
    result
      ..add(r'sessions')
      ..add(serializers.serialize(object.sessions,
          specifiedType: const FullType(
              BuiltList, [FullType(SessionCalendarEntrySchemaSessions)])));
    return result;
  }

  @override
  SessionCalendarEntrySchema deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SessionCalendarEntrySchemaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case r'center_id':
          result.centerId = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case r'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'name_l':
          result.nameL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'state_name':
          result.stateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'state_name_l':
          result.stateNameL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'district_name':
          result.districtName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'district_name_l':
          result.districtNameL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'block_name':
          result.blockName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'block_name_l':
          result.blockNameL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case r'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case r'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case r'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case r'fee_type':
          result.feeType = serializers.deserialize(value,
                  specifiedType:
                      const FullType(SessionCalendarEntrySchemaFeeTypeEnum))
              as SessionCalendarEntrySchemaFeeTypeEnum;
          break;
        case r'vaccine_fees':
          result.vaccineFees.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, [FullType(VaccineFeeSchema)]))
              as BuiltSet<VaccineFeeSchema>);
          break;
        case r'sessions':
          result.sessions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, [
                FullType(SessionCalendarEntrySchemaSessions)
              ])) as BuiltList<SessionCalendarEntrySchemaSessions>);
          break;
      }
    }
    return result.build();
  }
}

class SessionCalendarEntrySchemaFeeTypeEnum extends EnumClass {
  /// Fee charged for vaccination
  @BuiltValueEnumConst(wireName: r'Free')
  static const SessionCalendarEntrySchemaFeeTypeEnum free =
      _$sessionCalendarEntrySchemaFeeTypeEnum_free;

  /// Fee charged for vaccination
  @BuiltValueEnumConst(wireName: r'Paid')
  static const SessionCalendarEntrySchemaFeeTypeEnum paid =
      _$sessionCalendarEntrySchemaFeeTypeEnum_paid;

  static Serializer<SessionCalendarEntrySchemaFeeTypeEnum> get serializer =>
      _$sessionCalendarEntrySchemaFeeTypeEnumSerializer;

  const SessionCalendarEntrySchemaFeeTypeEnum._(String name) : super(name);

  static BuiltSet<SessionCalendarEntrySchemaFeeTypeEnum> get values =>
      _$sessionCalendarEntrySchemaFeeTypeEnumValues;
  static SessionCalendarEntrySchemaFeeTypeEnum valueOf(String name) =>
      _$sessionCalendarEntrySchemaFeeTypeEnumValueOf(name);
}
