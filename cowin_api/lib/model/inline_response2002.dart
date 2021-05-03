//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:cowin_api/model/inline_response2002_states.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2002.g.dart';

abstract class InlineResponse2002 implements Built<InlineResponse2002, InlineResponse2002Builder> {

    @nullable
    @BuiltValueField(wireName: r'states')
    BuiltSet<InlineResponse2002States> get states;

    /// Time in hours to cache the data. Client applications can use this data for this many number of hours before calling this API again.
    @nullable
    @BuiltValueField(wireName: r'ttl')
    num get ttl;

    InlineResponse2002._();

    static void _initializeBuilder(InlineResponse2002Builder b) => b;

    factory InlineResponse2002([void updates(InlineResponse2002Builder b)]) = _$InlineResponse2002;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineResponse2002> get serializer => _$InlineResponse2002Serializer();
}

class _$InlineResponse2002Serializer implements StructuredSerializer<InlineResponse2002> {

    @override
    final Iterable<Type> types = const [InlineResponse2002, _$InlineResponse2002];
    @override
    final String wireName = r'InlineResponse2002';

    @override
    Iterable<Object> serialize(Serializers serializers, InlineResponse2002 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.states != null) {
            result
                ..add(r'states')
                ..add(serializers.serialize(object.states,
                    specifiedType: const FullType(BuiltSet, [FullType(InlineResponse2002States)])));
        }
        if (object.ttl != null) {
            result
                ..add(r'ttl')
                ..add(serializers.serialize(object.ttl,
                    specifiedType: const FullType(num)));
        }
        return result;
    }

    @override
    InlineResponse2002 deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineResponse2002Builder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'states':
                    result.states.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltSet, [FullType(InlineResponse2002States)])) as BuiltSet<InlineResponse2002States>);
                    break;
                case r'ttl':
                    result.ttl = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    break;
            }
        }
        return result.build();
    }
}

