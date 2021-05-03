// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'session_response_schema.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SessionResponseSchemaFeeTypeEnum _$sessionResponseSchemaFeeTypeEnum_free =
    const SessionResponseSchemaFeeTypeEnum._('free');
const SessionResponseSchemaFeeTypeEnum _$sessionResponseSchemaFeeTypeEnum_paid =
    const SessionResponseSchemaFeeTypeEnum._('paid');

SessionResponseSchemaFeeTypeEnum _$sessionResponseSchemaFeeTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'free':
      return _$sessionResponseSchemaFeeTypeEnum_free;
    case 'paid':
      return _$sessionResponseSchemaFeeTypeEnum_paid;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SessionResponseSchemaFeeTypeEnum>
    _$sessionResponseSchemaFeeTypeEnumValues =
    new BuiltSet<SessionResponseSchemaFeeTypeEnum>(const <
        SessionResponseSchemaFeeTypeEnum>[
  _$sessionResponseSchemaFeeTypeEnum_free,
  _$sessionResponseSchemaFeeTypeEnum_paid,
]);

Serializer<SessionResponseSchemaFeeTypeEnum>
    _$sessionResponseSchemaFeeTypeEnumSerializer =
    new _$SessionResponseSchemaFeeTypeEnumSerializer();

class _$SessionResponseSchemaFeeTypeEnumSerializer
    implements PrimitiveSerializer<SessionResponseSchemaFeeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'free': 'Free',
    'paid': 'Paid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Free': 'free',
    'Paid': 'paid',
  };

  @override
  final Iterable<Type> types = const <Type>[SessionResponseSchemaFeeTypeEnum];
  @override
  final String wireName = 'SessionResponseSchemaFeeTypeEnum';

  @override
  Object serialize(
          Serializers serializers, SessionResponseSchemaFeeTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SessionResponseSchemaFeeTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SessionResponseSchemaFeeTypeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$SessionResponseSchema extends SessionResponseSchema {
  @override
  final num centerId;
  @override
  final String name;
  @override
  final String nameL;
  @override
  final String stateName;
  @override
  final String stateNameL;
  @override
  final String districtName;
  @override
  final String districtNameL;
  @override
  final String blockName;
  @override
  final String blockNameL;
  @override
  final String pincode;
  @override
  final double lat;
  @override
  final double long;
  @override
  final String from;
  @override
  final String to;
  @override
  final SessionResponseSchemaFeeTypeEnum feeType;
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

  factory _$SessionResponseSchema(
          [void Function(SessionResponseSchemaBuilder) updates]) =>
      (new SessionResponseSchemaBuilder()..update(updates)).build();

  _$SessionResponseSchema._(
      {this.centerId,
      this.name,
      this.nameL,
      this.stateName,
      this.stateNameL,
      this.districtName,
      this.districtNameL,
      this.blockName,
      this.blockNameL,
      this.pincode,
      this.lat,
      this.long,
      this.from,
      this.to,
      this.feeType,
      this.fee,
      this.sessionId,
      this.date,
      this.availableCapacity,
      this.minAgeLimit,
      this.vaccine,
      this.slots})
      : super._() {
    if (centerId == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'centerId');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'name');
    }
    if (stateName == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'stateName');
    }
    if (districtName == null) {
      throw new BuiltValueNullFieldError(
          'SessionResponseSchema', 'districtName');
    }
    if (blockName == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'blockName');
    }
    if (pincode == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'pincode');
    }
    if (from == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'from');
    }
    if (to == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'to');
    }
    if (feeType == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'feeType');
    }
    if (fee == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'fee');
    }
    if (sessionId == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'sessionId');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'date');
    }
    if (availableCapacity == null) {
      throw new BuiltValueNullFieldError(
          'SessionResponseSchema', 'availableCapacity');
    }
    if (minAgeLimit == null) {
      throw new BuiltValueNullFieldError(
          'SessionResponseSchema', 'minAgeLimit');
    }
    if (vaccine == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'vaccine');
    }
    if (slots == null) {
      throw new BuiltValueNullFieldError('SessionResponseSchema', 'slots');
    }
  }

  @override
  SessionResponseSchema rebuild(
          void Function(SessionResponseSchemaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionResponseSchemaBuilder toBuilder() =>
      new SessionResponseSchemaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionResponseSchema &&
        centerId == other.centerId &&
        name == other.name &&
        nameL == other.nameL &&
        stateName == other.stateName &&
        stateNameL == other.stateNameL &&
        districtName == other.districtName &&
        districtNameL == other.districtNameL &&
        blockName == other.blockName &&
        blockNameL == other.blockNameL &&
        pincode == other.pincode &&
        lat == other.lat &&
        long == other.long &&
        from == other.from &&
        to == other.to &&
        feeType == other.feeType &&
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
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc(0, centerId.hashCode), name.hashCode), nameL.hashCode),
                                                                                stateName.hashCode),
                                                                            stateNameL.hashCode),
                                                                        districtName.hashCode),
                                                                    districtNameL.hashCode),
                                                                blockName.hashCode),
                                                            blockNameL.hashCode),
                                                        pincode.hashCode),
                                                    lat.hashCode),
                                                long.hashCode),
                                            from.hashCode),
                                        to.hashCode),
                                    feeType.hashCode),
                                fee.hashCode),
                            sessionId.hashCode),
                        date.hashCode),
                    availableCapacity.hashCode),
                minAgeLimit.hashCode),
            vaccine.hashCode),
        slots.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SessionResponseSchema')
          ..add('centerId', centerId)
          ..add('name', name)
          ..add('nameL', nameL)
          ..add('stateName', stateName)
          ..add('stateNameL', stateNameL)
          ..add('districtName', districtName)
          ..add('districtNameL', districtNameL)
          ..add('blockName', blockName)
          ..add('blockNameL', blockNameL)
          ..add('pincode', pincode)
          ..add('lat', lat)
          ..add('long', long)
          ..add('from', from)
          ..add('to', to)
          ..add('feeType', feeType)
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

class SessionResponseSchemaBuilder
    implements Builder<SessionResponseSchema, SessionResponseSchemaBuilder> {
  _$SessionResponseSchema _$v;

  num _centerId;
  num get centerId => _$this._centerId;
  set centerId(num centerId) => _$this._centerId = centerId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameL;
  String get nameL => _$this._nameL;
  set nameL(String nameL) => _$this._nameL = nameL;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  String _stateNameL;
  String get stateNameL => _$this._stateNameL;
  set stateNameL(String stateNameL) => _$this._stateNameL = stateNameL;

  String _districtName;
  String get districtName => _$this._districtName;
  set districtName(String districtName) => _$this._districtName = districtName;

  String _districtNameL;
  String get districtNameL => _$this._districtNameL;
  set districtNameL(String districtNameL) =>
      _$this._districtNameL = districtNameL;

  String _blockName;
  String get blockName => _$this._blockName;
  set blockName(String blockName) => _$this._blockName = blockName;

  String _blockNameL;
  String get blockNameL => _$this._blockNameL;
  set blockNameL(String blockNameL) => _$this._blockNameL = blockNameL;

  String _pincode;
  String get pincode => _$this._pincode;
  set pincode(String pincode) => _$this._pincode = pincode;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  double _long;
  double get long => _$this._long;
  set long(double long) => _$this._long = long;

  String _from;
  String get from => _$this._from;
  set from(String from) => _$this._from = from;

  String _to;
  String get to => _$this._to;
  set to(String to) => _$this._to = to;

  SessionResponseSchemaFeeTypeEnum _feeType;
  SessionResponseSchemaFeeTypeEnum get feeType => _$this._feeType;
  set feeType(SessionResponseSchemaFeeTypeEnum feeType) =>
      _$this._feeType = feeType;

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

  SessionResponseSchemaBuilder() {
    SessionResponseSchema._initializeBuilder(this);
  }

  SessionResponseSchemaBuilder get _$this {
    if (_$v != null) {
      _centerId = _$v.centerId;
      _name = _$v.name;
      _nameL = _$v.nameL;
      _stateName = _$v.stateName;
      _stateNameL = _$v.stateNameL;
      _districtName = _$v.districtName;
      _districtNameL = _$v.districtNameL;
      _blockName = _$v.blockName;
      _blockNameL = _$v.blockNameL;
      _pincode = _$v.pincode;
      _lat = _$v.lat;
      _long = _$v.long;
      _from = _$v.from;
      _to = _$v.to;
      _feeType = _$v.feeType;
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
  void replace(SessionResponseSchema other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SessionResponseSchema;
  }

  @override
  void update(void Function(SessionResponseSchemaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SessionResponseSchema build() {
    _$SessionResponseSchema _$result;
    try {
      _$result = _$v ??
          new _$SessionResponseSchema._(
              centerId: centerId,
              name: name,
              nameL: nameL,
              stateName: stateName,
              stateNameL: stateNameL,
              districtName: districtName,
              districtNameL: districtNameL,
              blockName: blockName,
              blockNameL: blockNameL,
              pincode: pincode,
              lat: lat,
              long: long,
              from: from,
              to: to,
              feeType: feeType,
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
            'SessionResponseSchema', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
