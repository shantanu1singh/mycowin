// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'center_response_schema.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CenterResponseSchemaFeeTypeEnum _$centerResponseSchemaFeeTypeEnum_free =
    const CenterResponseSchemaFeeTypeEnum._('free');
const CenterResponseSchemaFeeTypeEnum _$centerResponseSchemaFeeTypeEnum_paid =
    const CenterResponseSchemaFeeTypeEnum._('paid');

CenterResponseSchemaFeeTypeEnum _$centerResponseSchemaFeeTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'free':
      return _$centerResponseSchemaFeeTypeEnum_free;
    case 'paid':
      return _$centerResponseSchemaFeeTypeEnum_paid;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CenterResponseSchemaFeeTypeEnum>
    _$centerResponseSchemaFeeTypeEnumValues =
    new BuiltSet<CenterResponseSchemaFeeTypeEnum>(const <
        CenterResponseSchemaFeeTypeEnum>[
  _$centerResponseSchemaFeeTypeEnum_free,
  _$centerResponseSchemaFeeTypeEnum_paid,
]);

Serializer<CenterResponseSchemaFeeTypeEnum>
    _$centerResponseSchemaFeeTypeEnumSerializer =
    new _$CenterResponseSchemaFeeTypeEnumSerializer();

class _$CenterResponseSchemaFeeTypeEnumSerializer
    implements PrimitiveSerializer<CenterResponseSchemaFeeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'free': 'Free',
    'paid': 'Paid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Free': 'free',
    'Paid': 'paid',
  };

  @override
  final Iterable<Type> types = const <Type>[CenterResponseSchemaFeeTypeEnum];
  @override
  final String wireName = 'CenterResponseSchemaFeeTypeEnum';

  @override
  Object serialize(
          Serializers serializers, CenterResponseSchemaFeeTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CenterResponseSchemaFeeTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CenterResponseSchemaFeeTypeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$CenterResponseSchema extends CenterResponseSchema {
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
  final CenterResponseSchemaFeeTypeEnum feeType;

  factory _$CenterResponseSchema(
          [void Function(CenterResponseSchemaBuilder) updates]) =>
      (new CenterResponseSchemaBuilder()..update(updates)).build();

  _$CenterResponseSchema._(
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
      this.feeType})
      : super._() {
    if (centerId == null) {
      throw new BuiltValueNullFieldError('CenterResponseSchema', 'centerId');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CenterResponseSchema', 'name');
    }
    if (stateName == null) {
      throw new BuiltValueNullFieldError('CenterResponseSchema', 'stateName');
    }
    if (districtName == null) {
      throw new BuiltValueNullFieldError(
          'CenterResponseSchema', 'districtName');
    }
    if (blockName == null) {
      throw new BuiltValueNullFieldError('CenterResponseSchema', 'blockName');
    }
    if (pincode == null) {
      throw new BuiltValueNullFieldError('CenterResponseSchema', 'pincode');
    }
    if (from == null) {
      throw new BuiltValueNullFieldError('CenterResponseSchema', 'from');
    }
    if (to == null) {
      throw new BuiltValueNullFieldError('CenterResponseSchema', 'to');
    }
    if (feeType == null) {
      throw new BuiltValueNullFieldError('CenterResponseSchema', 'feeType');
    }
  }

  @override
  CenterResponseSchema rebuild(
          void Function(CenterResponseSchemaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CenterResponseSchemaBuilder toBuilder() =>
      new CenterResponseSchemaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CenterResponseSchema &&
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
        feeType == other.feeType;
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
        feeType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CenterResponseSchema')
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
          ..add('feeType', feeType))
        .toString();
  }
}

class CenterResponseSchemaBuilder
    implements Builder<CenterResponseSchema, CenterResponseSchemaBuilder> {
  _$CenterResponseSchema _$v;

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

  CenterResponseSchemaFeeTypeEnum _feeType;
  CenterResponseSchemaFeeTypeEnum get feeType => _$this._feeType;
  set feeType(CenterResponseSchemaFeeTypeEnum feeType) =>
      _$this._feeType = feeType;

  CenterResponseSchemaBuilder() {
    CenterResponseSchema._initializeBuilder(this);
  }

  CenterResponseSchemaBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CenterResponseSchema other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CenterResponseSchema;
  }

  @override
  void update(void Function(CenterResponseSchemaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CenterResponseSchema build() {
    final _$result = _$v ??
        new _$CenterResponseSchema._(
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
            feeType: feeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
