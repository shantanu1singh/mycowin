//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_calendar_entry_schema_sessions.g.dart';

abstract class SessionCalendarEntrySchemaSessions implements Built<SessionCalendarEntrySchemaSessions, SessionCalendarEntrySchemaSessionsBuilder> {

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

    SessionCalendarEntrySchemaSessions._();

    static void _initializeBuilder(SessionCalendarEntrySchemaSessionsBuilder b) => b;

    factory SessionCalendarEntrySchemaSessions([void updates(SessionCalendarEntrySchemaSessionsBuilder b)]) = _$SessionCalendarEntrySchemaSessions;

    @BuiltValueSerializer(custom: true)
    static Serializer<SessionCalendarEntrySchemaSessions> get serializer => _$SessionCalendarEntrySchemaSessionsSerializer();
}

class _$SessionCalendarEntrySchemaSessionsSerializer implements StructuredSerializer<SessionCalendarEntrySchemaSessions> {

    @override
    final Iterable<Type> types = const [SessionCalendarEntrySchemaSessions, _$SessionCalendarEntrySchemaSessions];
    @override
    final String wireName = r'SessionCalendarEntrySchemaSessions';

    @override
    Iterable<Object> serialize(Serializers serializers, SessionCalendarEntrySchemaSessions object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    SessionCalendarEntrySchemaSessions deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SessionCalendarEntrySchemaSessionsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
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

