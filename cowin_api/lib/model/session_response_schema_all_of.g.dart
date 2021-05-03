// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'session_response_schema_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionResponseSchemaAllOf extends SessionResponseSchemaAllOf {
  @override
  final String fee;
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

  factory _$SessionResponseSchemaAllOf(
          [void Function(SessionResponseSchemaAllOfBuilder) updates]) =>
      (new SessionResponseSchemaAllOfBuilder()..update(updates)).build();

  _$SessionResponseSchemaAllOf._(
      {this.fee,
      this.sessionId,
      this.date,
      this.availableCapacity,
      this.minAgeLimit,
      this.vaccine,
      this.slots})
      : super._() {
    if (fee == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchemaAllOf', 'fee');
    }
    if (sessionId == null) {
      throw new BuiltValueNullFieldError(
          'SessionResponseSchemaAllOf', 'sessionId');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchemaAllOf', 'date');
    }
    if (availableCapacity == null) {
      throw new BuiltValueNullFieldError(
          'SessionResponseSchemaAllOf', 'availableCapacity');
    }
    if (minAgeLimit == null) {
      throw new BuiltValueNullFieldError(
          'SessionResponseSchemaAllOf', 'minAgeLimit');
    }
    if (vaccine == null) {
      throw new BuiltValueNullFieldError(
          'SessionResponseSchemaAllOf', 'vaccine');
    }
    if (slots == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchemaAllOf', 'slots');
    }
  }

  @override
  SessionResponseSchemaAllOf rebuild(
          void Function(SessionResponseSchemaAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionResponseSchemaAllOfBuilder toBuilder() =>
      new SessionResponseSchemaAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionResponseSchemaAllOf &&
        fee == other.fee &&
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
                $jc(
                    $jc($jc($jc(0, fee.hashCode), sessionId.hashCode),
                        date.hashCode),
                    availableCapacity.hashCode),
                minAgeLimit.hashCode),
            vaccine.hashCode),
        slots.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SessionResponseSchemaAllOf')
          ..add('fee', fee)
          ..add('sessionId', sessionId)
          ..add('date', date)
          ..add('availableCapacity', availableCapacity)
          ..add('minAgeLimit', minAgeLimit)
          ..add('vaccine', vaccine)
          ..add('slots', slots))
        .toString();
  }
}

class SessionResponseSchemaAllOfBuilder
    implements
        Builder<SessionResponseSchemaAllOf, SessionResponseSchemaAllOfBuilder> {
  _$SessionResponseSchemaAllOf _$v;

  String _fee;
  String get fee => _$this._fee;
  set fee(String fee) => _$this._fee = fee;

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

  SessionResponseSchemaAllOfBuilder() {
    SessionResponseSchemaAllOf._initializeBuilder(this);
  }

  SessionResponseSchemaAllOfBuilder get _$this {
    if (_$v != null) {
      _fee = _$v.fee;
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
  void replace(SessionResponseSchemaAllOf other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SessionResponseSchemaAllOf;
  }

  @override
  void update(void Function(SessionResponseSchemaAllOfBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SessionResponseSchemaAllOf build() {
    _$SessionResponseSchemaAllOf _$result;
    try {
      _$result = _$v ??
          new _$SessionResponseSchemaAllOf._(
              fee: fee,
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
            'SessionResponseSchemaAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
