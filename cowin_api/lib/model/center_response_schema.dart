//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'center_response_schema.g.dart';

abstract class CenterResponseSchema implements Built<CenterResponseSchema, CenterResponseSchemaBuilder> {

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
    CenterResponseSchemaFeeTypeEnum get feeType;
    // enum feeTypeEnum {  Free,  Paid,  };

    CenterResponseSchema._();

    static void _initializeBuilder(CenterResponseSchemaBuilder b) => b;

    factory CenterResponseSchema([void updates(CenterResponseSchemaBuilder b)]) = _$CenterResponseSchema;

    @BuiltValueSerializer(custom: true)
    static Serializer<CenterResponseSchema> get serializer => _$CenterResponseSchemaSerializer();
}

class _$CenterResponseSchemaSerializer implements StructuredSerializer<CenterResponseSchema> {

    @override
    final Iterable<Type> types = const [CenterResponseSchema, _$CenterResponseSchema];
    @override
    final String wireName = r'CenterResponseSchema';

    @override
    Iterable<Object> serialize(Serializers serializers, CenterResponseSchema object,
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
                specifiedType: const FullType(CenterResponseSchemaFeeTypeEnum)));
        return result;
    }

    @override
    CenterResponseSchema deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CenterResponseSchemaBuilder();

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
                        specifiedType: const FullType(CenterResponseSchemaFeeTypeEnum)) as CenterResponseSchemaFeeTypeEnum;
                    break;
            }
        }
        return result.build();
    }
}

class CenterResponseSchemaFeeTypeEnum extends EnumClass {

  /// Fee charged for vaccination
  @BuiltValueEnumConst(wireName: r'Free')
  static const CenterResponseSchemaFeeTypeEnum free = _$centerResponseSchemaFeeTypeEnum_free;
  /// Fee charged for vaccination
  @BuiltValueEnumConst(wireName: r'Paid')
  static const CenterResponseSchemaFeeTypeEnum paid = _$centerResponseSchemaFeeTypeEnum_paid;

  static Serializer<CenterResponseSchemaFeeTypeEnum> get serializer => _$centerResponseSchemaFeeTypeEnumSerializer;

  const CenterResponseSchemaFeeTypeEnum._(String name): super(name);

  static BuiltSet<CenterResponseSchemaFeeTypeEnum> get values => _$centerResponseSchemaFeeTypeEnumValues;
  static CenterResponseSchemaFeeTypeEnum valueOf(String name) => _$centerResponseSchemaFeeTypeEnumValueOf(name);
}

