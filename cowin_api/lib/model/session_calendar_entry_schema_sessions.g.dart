// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'session_calendar_entry_schema_sessions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionCalendarEntrySchemaSessions
    extends SessionCalendarEntrySchemaSessions {
  @override
  final String sessionId;
  @override
  final String date;
  @override
  final num availableCapacity;
  @override
  final num minAgeLimit;
  @override
  final String vaccine;
  @override
  final BuiltSet<String> slots;

  factory _$SessionCalendarEntrySchemaSessions(
          [void Function(SessionCalendarEntrySchemaSessionsBuilder) updates]) =>
      (new SessionCalendarEntrySchemaSessionsBuilder()..update(updates))
          .build();

  _$SessionCalendarEntrySchemaSessions._(
      {this.sessionId,
      this.date,
      this.availableCapacity,
      this.minAgeLimit,
      this.vaccine,
      this.slots})
      : super._() {
    if (sessionId == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchemaSessions', 'sessionId');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchemaSessions', 'date');
    }
    if (availableCapacity == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchemaSessions', 'availableCapacity');
    }
    if (minAgeLimit == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchemaSessions', 'minAgeLimit');
    }
    if (vaccine == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchemaSessions', 'vaccine');
    }
    if (slots == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchemaSessions', 'slots');
    }
  }

  @override
  SessionCalendarEntrySchemaSessions rebuild(
          void Function(SessionCalendarEntrySchemaSessionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionCalendarEntrySchemaSessionsBuilder toBuilder() =>
      new SessionCalendarEntrySchemaSessionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionCalendarEntrySchemaSessions &&
        sessionId == other.sessionId &&
        date == other.date &&
        availableCapacity == other.availableCapacity &&
        minAgeLimit == other.minAgeLimit &&
        vaccine == other.vaccine &&
        slots == other.slots;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, sessionId.hashCode), date.hashCode),
                    availableCapacity.hashCode),
                minAgeLimit.hashCode),
            vaccine.hashCode),
        slots.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SessionCalendarEntrySchemaSessions')
          ..add('sessionId', sessionId)
          ..add('date', date)
          ..add('availableCapacity', availableCapacity)
          ..add('minAgeLimit', minAgeLimit)
          ..add('vaccine', vaccine)
          ..add('slots', slots))
        .toString();
  }
}

class SessionCalendarEntrySchemaSessionsBuilder
    implements
        Builder<SessionCalendarEntrySchemaSessions,
            SessionCalendarEntrySchemaSessionsBuilder> {
  _$SessionCalendarEntrySchemaSessions _$v;

  String _sessionId;
  String get sessionId => _$this._sessionId;
  set sessionId(String sessionId) => _$this._sessionId = sessionId;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  num _availableCapacity;
  num get availableCapacity => _$this._availableCapacity;
  set availableCapacity(num availableCapacity) =>
      _$this._availableCapacity = availableCapacity;

  num _minAgeLimit;
  num get minAgeLimit => _$this._minAgeLimit;
  set minAgeLimit(num minAgeLimit) => _$this._minAgeLimit = minAgeLimit;

  String _vaccine;
  String get vaccine => _$this._vaccine;
  set vaccine(String vaccine) => _$this._vaccine = vaccine;

  SetBuilder<String> _slots;
  SetBuilder<String> get slots => _$this._slots ??= new SetBuilder<String>();
  set slots(SetBuilder<String> slots) => _$this._slots = slots;

  SessionCalendarEntrySchemaSessionsBuilder() {
    SessionCalendarEntrySchemaSessions._initializeBuilder(this);
  }

  SessionCalendarEntrySchemaSessionsBuilder get _$this {
    if (_$v != null) {
      _sessionId = _$v.sessionId;
      _date = _$v.date;
      _availableCapacity = _$v.availableCapacity;
      _minAgeLimit = _$v.minAgeLimit;
      _vaccine = _$v.vaccine;
      _slots = _$v.slots?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionCalendarEntrySchemaSessions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SessionCalendarEntrySchemaSessions;
  }

  @override
  void update(
      void Function(SessionCalendarEntrySchemaSessionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SessionCalendarEntrySchemaSessions build() {
    _$SessionCalendarEntrySchemaSessions _$result;
    try {
      _$result = _$v ??
          new _$SessionCalendarEntrySchemaSessions._(
              sessionId: sessionId,
              date: date,
              availableCapacity: availableCapacity,
              minAgeLimit: minAgeLimit,
              vaccine: vaccine,
              slots: slots.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'slots';
        slots.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SessionCalendarEntrySchemaSessions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
