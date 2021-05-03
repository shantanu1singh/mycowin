//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:cowin_api/model/inline_response2003_districts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response2003.g.dart';

abstract class InlineResponse2003 implements Built<InlineResponse2003, InlineResponse2003Builder> {

    @nullable
    @BuiltValueField(wireName: r'districts')
    BuiltSet<InlineResponse2003Districts> get districts;

    /// Time in hours to cache the data. Client applications can use this data for this many number of hours before calling this API again.
    @nullable
    @BuiltValueField(wireName: r'ttl')
    num get ttl;

    InlineResponse2003._();

    static void _initializeBuilder(InlineResponse2003Builder b) => b;

    factory InlineResponse2003([void updates(InlineResponse2003Builder b)]) = _$InlineResponse2003;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineResponse2003> get serializer => _$InlineResponse2003Serializer();
}

class _$InlineResponse2003Serializer implements StructuredSerializer<InlineResponse2003> {

    @override
    final Iterable<Type> types = const [InlineResponse2003, _$InlineResponse2003];
    @override
    final String wireName = r'InlineResponse2003';

    @override
    Iterable<Object> serialize(Serializers serializers, InlineResponse2003 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.districts != null) {
            result
                ..add(r'districts')
                ..add(serializers.serialize(object.districts,
                    specifiedType: const FullType(BuiltSet, [FullType(InlineResponse2003Districts)])));
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
    InlineResponse2003 deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineResponse2003Builder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'districts':
                    result.districts.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltSet, [FullType(InlineResponse2003Districts)])) as BuiltSet<InlineResponse2003Districts>);
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

