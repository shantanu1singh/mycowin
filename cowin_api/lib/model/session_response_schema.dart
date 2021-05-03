//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:cowin_api/model/center_response_schema.dart';
import 'package:cowin_api/model/session_response_schema_all_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_response_schema.g.dart';

abstract class SessionResponseSchema implements Built<SessionResponseSchema, SessionResponseSchemaBuilder> {

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
    String get pincode;

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
    SessionResponseSchemaFeeTypeEnum get feeType;
    // enum feeTypeEnum {  Free,  Paid,  };

    @BuiltValueField(wireName: r'fee')
    String get fee;

    @BuiltValueField(wireName: r'session_id')
    String get sessionId;

    @BuiltValueField(wireName: r'date')
    String get date;

    @BuiltValueField(wireName: r'available_capacity')
    num get availableCapacity;

    @BuiltValueField(wireName: r'min_age_limit')
    num get minAgeLimit;

    @BuiltValueField(wireName: r'vaccine')
    String get vaccine;

    /// Array of slot names
    @BuiltValueField(wireName: r'slots')
    BuiltSet<String> get slots;

    SessionResponseSchema._();

    static void _initializeBuilder(SessionResponseSchemaBuilder b) => b;

    factory SessionResponseSchema([void updates(SessionResponseSchemaBuilder b)]) = _$SessionResponseSchema;

    @BuiltValueSerializer(custom: true)
    static Serializer<SessionResponseSchema> get serializer => _$SessionResponseSchemaSerializer();
}

class _$SessionResponseSchemaSerializer implements StructuredSerializer<SessionResponseSchema> {

    @override
    final Iterable<Type> types = const [SessionResponseSchema, _$SessionResponseSchema];
    @override
    final String wireName = r'SessionResponseSchema';

    @override
    Iterable<Object> serialize(Serializers serializers, SessionResponseSchema object,
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
                specifiedType: const FullType(String)));
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
                specifiedType: const FullType(SessionResponseSchemaFeeTypeEnum)));
        result
            ..add(r'fee')
            ..add(serializers.serialize(object.fee,
                specifiedType: const FullType(String)));
        result
            ..add(r'session_id')
            ..add(serializers.serialize(object.sessionId,
                specifiedType: const FullType(String)));
        result
            ..add(r'date')
            ..add(serializers.serialize(object.date,
                specifiedType: const FullType(String)));
        result
            ..add(r'available_capacity')
            ..add(serializers.serialize(object.availableCapacity,
                specifiedType: const FullType(num)));
        result
            ..add(r'min_age_limit')
            ..add(serializers.serialize(object.minAgeLimit,
                specifiedType: const FullType(num)));
        result
            ..add(r'vaccine')
            ..add(serializers.serialize(object.vaccine,
                specifiedType: const FullType(String)));
        result
            ..add(r'slots')
            ..add(serializers.serialize(object.slots,
                specifiedType: const FullType(BuiltSet, [FullType(String)])));
        return result;
    }

    @override
    SessionResponseSchema deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SessionResponseSchemaBuilder();

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
                        specifiedType: const FullType(String)) as String;
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
                        specifiedType: const FullType(SessionResponseSchemaFeeTypeEnum)) as SessionResponseSchemaFeeTypeEnum;
                    break;
                case r'fee':
                    result.fee = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'session_id':
                    result.sessionId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'date':
                    result.date = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'available_capacity':
                    result.availableCapacity = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'min_age_limit':
                    result.minAgeLimit = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'vaccine':
                    result.vaccine = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'slots':
                    result.slots.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltSet, [FullType(String)])) as BuiltSet<String>);
                    break;
            }
        }
        return result.build();
    }
}

class SessionResponseSchemaFeeTypeEnum extends EnumClass {

  /// Fee charged for vaccination
  @BuiltValueEnumConst(wireName: r'Free')
  static const SessionResponseSchemaFeeTypeEnum free = _$sessionResponseSchemaFeeTypeEnum_free;
  /// Fee charged for vaccination
  @BuiltValueEnumConst(wireName: r'Paid')
  static const SessionResponseSchemaFeeTypeEnum paid = _$sessionResponseSchemaFeeTypeEnum_paid;

  static Serializer<SessionResponseSchemaFeeTypeEnum> get serializer => _$sessionResponseSchemaFeeTypeEnumSerializer;

  const SessionResponseSchemaFeeTypeEnum._(String name): super(name);

  static BuiltSet<SessionResponseSchemaFeeTypeEnum> get values => _$sessionResponseSchemaFeeTypeEnumValues;
  static SessionResponseSchemaFeeTypeEnum valueOf(String name) => _$sessionResponseSchemaFeeTypeEnumValueOf(name);
}

