//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vaccine_fee_schema.g.dart';

abstract class VaccineFeeSchema implements Built<VaccineFeeSchema, VaccineFeeSchemaBuilder> {

    @BuiltValueField(wireName: r'vaccine')
    String get vaccine;

    @BuiltValueField(wireName: r'fee')
    String get fee;

    VaccineFeeSchema._();

    static void _initializeBuilder(VaccineFeeSchemaBuilder b) => b;

    factory VaccineFeeSchema([void updates(VaccineFeeSchemaBuilder b)]) = _$VaccineFeeSchema;

    @BuiltValueSerializer(custom: true)
    static Serializer<VaccineFeeSchema> get serializer => _$VaccineFeeSchemaSerializer();
}

class _$VaccineFeeSchemaSerializer implements StructuredSerializer<VaccineFeeSchema> {

    @override
    final Iterable<Type> types = const [VaccineFeeSchema, _$VaccineFeeSchema];
    @override
    final String wireName = r'VaccineFeeSchema';

    @override
    Iterable<Object> serialize(Serializers serializers, VaccineFeeSchema object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'vaccine')
            ..add(serializers.serialize(object.vaccine,
                specifiedType: const FullType(String)));
        result
            ..add(r'fee')
            ..add(serializers.serialize(object.fee,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    VaccineFeeSchema deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = VaccineFeeSchemaBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'vaccine':
                    result.vaccine = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'fee':
                    result.fee = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

