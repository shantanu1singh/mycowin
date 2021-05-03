//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2002_states.g.dart';

abstract class InlineResponse2002States implements Built<InlineResponse2002States, InlineResponse2002StatesBuilder> {

    @BuiltValueField(wireName: r'state_id')
    num get stateId;

    @BuiltValueField(wireName: r'state_name')
    String get stateName;

    /// State name in preferred language as specified in Accept-Language header parameter.
    @nullable
    @BuiltValueField(wireName: r'state_name_l')
    String get stateNameL;

    InlineResponse2002States._();

    static void _initializeBuilder(InlineResponse2002StatesBuilder b) => b;

    factory InlineResponse2002States([void updates(InlineResponse2002StatesBuilder b)]) = _$InlineResponse2002States;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineResponse2002States> get serializer => _$InlineResponse2002StatesSerializer();
}

class _$InlineResponse2002StatesSerializer implements StructuredSerializer<InlineResponse2002States> {

    @override
    final Iterable<Type> types = const [InlineResponse2002States, _$InlineResponse2002States];
    @override
    final String wireName = r'InlineResponse2002States';

    @override
    Iterable<Object> serialize(Serializers serializers, InlineResponse2002States object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'state_id')
            ..add(serializers.serialize(object.stateId,
                specifiedType: const FullType(num)));
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
        return result;
    }

    @override
    InlineResponse2002States deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineResponse2002StatesBuilder();

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
                case r'state_name':
                    result.stateName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'state_name_l':
                    result.stateNameL = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

