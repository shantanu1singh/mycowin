// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'session_calendar_entry_schema.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SessionCalendarEntrySchemaFeeTypeEnum
    _$sessionCalendarEntrySchemaFeeTypeEnum_free =
    const SessionCalendarEntrySchemaFeeTypeEnum._('free');
const SessionCalendarEntrySchemaFeeTypeEnum
    _$sessionCalendarEntrySchemaFeeTypeEnum_paid =
    const SessionCalendarEntrySchemaFeeTypeEnum._('paid');

SessionCalendarEntrySchemaFeeTypeEnum
    _$sessionCalendarEntrySchemaFeeTypeEnumValueOf(String name) {
  switch (name) {
    case 'free':
      return _$sessionCalendarEntrySchemaFeeTypeEnum_free;
    case 'paid':
      return _$sessionCalendarEntrySchemaFeeTypeEnum_paid;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SessionCalendarEntrySchemaFeeTypeEnum>
    _$sessionCalendarEntrySchemaFeeTypeEnumValues =
    new BuiltSet<SessionCalendarEntrySchemaFeeTypeEnum>(const <
        SessionCalendarEntrySchemaFeeTypeEnum>[
  _$sessionCalendarEntrySchemaFeeTypeEnum_free,
  _$sessionCalendarEntrySchemaFeeTypeEnum_paid,
]);

Serializer<SessionCalendarEntrySchemaFeeTypeEnum>
    _$sessionCalendarEntrySchemaFeeTypeEnumSerializer =
    new _$SessionCalendarEntrySchemaFeeTypeEnumSerializer();

class _$SessionCalendarEntrySchemaFeeTypeEnumSerializer
    implements PrimitiveSerializer<SessionCalendarEntrySchemaFeeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'free': 'Free',
    'paid': 'Paid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Free': 'free',
    'Paid': 'paid',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SessionCalendarEntrySchemaFeeTypeEnum
  ];
  @override
  final String wireName = 'SessionCalendarEntrySchemaFeeTypeEnum';

  @override
  Object serialize(
          Serializers serializers, SessionCalendarEntrySchemaFeeTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SessionCalendarEntrySchemaFeeTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SessionCalendarEntrySchemaFeeTypeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$SessionCalendarEntrySchema extends SessionCalendarEntrySchema {
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
  final num pincode;
  @override
  final double lat;
  @override
  final double long;
  @override
  final String from;
  @override
  final String to;
  @override
  final SessionCalendarEntrySchemaFeeTypeEnum feeType;
  @override
  final BuiltSet<VaccineFeeSchema> vaccineFees;
  @override
  final BuiltList<SessionCalendarEntrySchemaSessions> sessions;

  factory _$SessionCalendarEntrySchema(
          [void Function(SessionCalendarEntrySchemaBuilder) updates]) =>
      (new SessionCalendarEntrySchemaBuilder()..update(updates)).build();

  _$SessionCalendarEntrySchema._(
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
      this.vaccineFees,
      this.sessions})
      : super._() {
    if (centerId == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchema', 'centerId');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('SessionCalendarEntrySchema', 'name');
    }
    if (stateName == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchema', 'stateName');
    }
    if (districtName == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchema', 'districtName');
    }
    if (blockName == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchema', 'blockName');
    }
    if (pincode == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchema', 'pincode');
    }
    if (from == null) {
      throw new BuiltValueNullFieldError('SessionCalendarEntrySchema', 'from');
    }
    if (to == null) {
      throw new BuiltValueNullFieldError('SessionCalendarEntrySchema', 'to');
    }
    if (feeType == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchema', 'feeType');
    }
    if (sessions == null) {
      throw new BuiltValueNullFieldError(
          'SessionCalendarEntrySchema', 'sessions');
    }
  }

  @override
  SessionCalendarEntrySchema rebuild(
          void Function(SessionCalendarEntrySchemaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionCalendarEntrySchemaBuilder toBuilder() =>
      new SessionCalendarEntrySchemaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionCalendarEntrySchema &&
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
        vaccineFees == other.vaccineFees &&
        sessions == other.sessions;
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
                                                                        0,
                                                                        centerId
                                                                            .hashCode),
                                                                    name.hashCode),
                                                                nameL.hashCode),
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
            vaccineFees.hashCode),
        sessions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SessionCalendarEntrySchema')
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
          ..add('vaccineFees', vaccineFees)
          ..add('sessions', sessions))
        .toString();
  }
}

class SessionCalendarEntrySchemaBuilder
    implements
        Builder<SessionCalendarEntrySchema, SessionCalendarEntrySchemaBuilder> {
  _$SessionCalendarEntrySchema _$v;

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

  num _pincode;
  num get pincode => _$this._pincode;
  set pincode(num pincode) => _$this._pincode = pincode;

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

  SessionCalendarEntrySchemaFeeTypeEnum _feeType;
  SessionCalendarEntrySchemaFeeTypeEnum get feeType => _$this._feeType;
  set feeType(SessionCalendarEntrySchemaFeeTypeEnum feeType) =>
      _$this._feeType = feeType;

  SetBuilder<VaccineFeeSchema> _vaccineFees;
  SetBuilder<VaccineFeeSchema> get vaccineFees =>
      _$this._vaccineFees ??= new SetBuilder<VaccineFeeSchema>();
  set vaccineFees(SetBuilder<VaccineFeeSchema> vaccineFees) =>
      _$this._vaccineFees = vaccineFees;

  ListBuilder<SessionCalendarEntrySchemaSessions> _sessions;
  ListBuilder<SessionCalendarEntrySchemaSessions> get sessions =>
      _$this._sessions ??=
          new ListBuilder<SessionCalendarEntrySchemaSessions>();
  set sessions(ListBuilder<SessionCalendarEntrySchemaSessions> sessions) =>
      _$this._sessions = sessions;

  SessionCalendarEntrySchemaBuilder() {
    SessionCalendarEntrySchema._initializeBuilder(this);
  }

  SessionCalendarEntrySchemaBuilder get _$this {
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
      _vaccineFees = _$v.vaccineFees?.toBuilder();
      _sessions = _$v.sessions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionCalendarEntrySchema other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SessionCalendarEntrySchema;
  }

  @override
  void update(void Function(SessionCalendarEntrySchemaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SessionCalendarEntrySchema build() {
    _$SessionCalendarEntrySchema _$result;
    try {
      _$result = _$v ??
          new _$SessionCalendarEntrySchema._(
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
              vaccineFees: _vaccineFees?.build(),
              sessions: sessions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'vaccineFees';
        _vaccineFees?.build();
        _$failedField = 'sessions';
        sessions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SessionCalendarEntrySchema', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
