//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object1.g.dart';

abstract class InlineObject1 implements Built<InlineObject1, InlineObject1Builder> {

    /// SHA256 of the OTP
    @nullable
    @BuiltValueField(wireName: r'otp')
    String get otp;

    @nullable
    @BuiltValueField(wireName: r'txnId')
    String get txnId;

    InlineObject1._();

    static void _initializeBuilder(InlineObject1Builder b) => b;

    factory InlineObject1([void updates(InlineObject1Builder b)]) = _$InlineObject1;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineObject1> get serializer => _$InlineObject1Serializer();
}

class _$InlineObject1Serializer implements StructuredSerializer<InlineObject1> {

    @override
    final Iterable<Type> types = const [InlineObject1, _$InlineObject1];
    @override
    final String wireName = r'InlineObject1';

    @override
    Iterable<Object> serialize(Serializers serializers, InlineObject1 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.otp != null) {
            result
                ..add(r'otp')
                ..add(serializers.serialize(object.otp,
                    specifiedType: const FullType(String)));
        }
        if (object.txnId != null) {
            result
                ..add(r'txnId')
                ..add(serializers.serialize(object.txnId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    InlineObject1 deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineObject1Builder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'otp':
                    result.otp = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'txnId':
                    result.txnId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

