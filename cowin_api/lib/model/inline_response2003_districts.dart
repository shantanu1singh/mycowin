//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2003_districts.g.dart';

abstract class InlineResponse2003Districts implements Built<InlineResponse2003Districts, InlineResponse2003DistrictsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'state_id')
    num get stateId;

    @BuiltValueField(wireName: r'district_id')
    num get districtId;

    @BuiltValueField(wireName: r'district_name')
    String get districtName;

    /// District name in preferred language as specified in Accept-Language header parameter.
    @nullable
    @BuiltValueField(wireName: r'district_name_l')
    String get districtNameL;

    InlineResponse2003Districts._();

    static void _initializeBuilder(InlineResponse2003DistrictsBuilder b) => b;

    factory InlineResponse2003Districts([void updates(InlineResponse2003DistrictsBuilder b)]) = _$InlineResponse2003Districts;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineResponse2003Districts> get serializer => _$InlineResponse2003DistrictsSerializer();
}

class _$InlineResponse2003DistrictsSerializer implements StructuredSerializer<InlineResponse2003Districts> {

    @override
    final Iterable<Type> types = const [InlineResponse2003Districts, _$InlineResponse2003Districts];
    @override
    final String wireName = r'InlineResponse2003Districts';

    @override
    Iterable<Object> serialize(Serializers serializers, InlineResponse2003Districts object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.stateId != null) {
            result
                ..add(r'state_id')
                ..add(serializers.serialize(object.stateId,
                    specifiedType: const FullType(num)));
        }
        result
            ..add(r'district_id')
            ..add(serializers.serialize(object.districtId,
                specifiedType: const FullType(num)));
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
        return result;
    }

    @override
    InlineResponse2003Districts deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineResponse2003DistrictsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'state_id':
                    result.stateId = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'district_id':
                    result.districtId = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
                case r'district_name':
                    result.districtName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'district_name_l':
                    result.districtNameL = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

