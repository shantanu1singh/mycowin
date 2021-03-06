//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response400.g.dart';

abstract class InlineResponse400 implements Built<InlineResponse400, InlineResponse400Builder> {

    @nullable
    @BuiltValueField(wireName: r'errorCode')
    String get errorCode;

    @nullable
    @BuiltValueField(wireName: r'error')
    String get error;

    InlineResponse400._();

    static void _initializeBuilder(InlineResponse400Builder b) => b;

    factory InlineResponse400([void updates(InlineResponse400Builder b)]) = _$InlineResponse400;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineResponse400> get serializer => _$InlineResponse400Serializer();
}

class _$InlineResponse400Serializer implements StructuredSerializer<InlineResponse400> {

    @override
    final Iterable<Type> types = const [InlineResponse400, _$InlineResponse400];
    @override
    final String wireName = r'InlineResponse400';

    @override
    Iterable<Object> serialize(Serializers serializers, InlineResponse400 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.errorCode != null) {
            result
                ..add(r'errorCode')
                ..add(serializers.serialize(object.errorCode,
                    specifiedType: const FullType(String)));
        }
        if (object.error != null) {
            result
                ..add(r'error')
                ..add(serializers.serialize(object.error,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    InlineResponse400 deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineResponse400Builder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'errorCode':
                    result.errorCode = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'error':
                    result.error = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

