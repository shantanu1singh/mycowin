// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'inline_response2003_districts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineResponse2003Districts extends InlineResponse2003Districts {
  @override
  final num stateId;
  @override
  final num districtId;
  @override
  final String districtName;
  @override
  final String districtNameL;

  factory _$InlineResponse2003Districts(
          [void Function(InlineResponse2003DistrictsBuilder) updates]) =>
      (new InlineResponse2003DistrictsBuilder()..update(updates)).build();

  _$InlineResponse2003Districts._(
      {this.stateId, this.districtId, this.districtName, this.districtNameL})
      : super._() {
    if (districtId == null) {
      throw new BuiltValueNullFieldError(
          'InlineResponse2003Districts', 'districtId');
    }
    if (districtName == null) {
      throw new BuiltValueNullFieldError(
          'InlineResponse2003Districts', 'districtName');
    }
  }

  @override
  InlineResponse2003Districts rebuild(
          void Function(InlineResponse2003DistrictsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2003DistrictsBuilder toBuilder() =>
      new InlineResponse2003DistrictsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2003Districts &&
        stateId == other.stateId &&
        districtId == other.districtId &&
        districtName == other.districtName &&
        districtNameL == other.districtNameL;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, stateId.hashCode), districtId.hashCode),
            districtName.hashCode),
        districtNameL.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse2003Districts')
          ..add('stateId', stateId)
          ..add('districtId', districtId)
          ..add('districtName', districtName)
          ..add('districtNameL', districtNameL))
        .toString();
  }
}

class InlineResponse2003DistrictsBuilder
    implements
        Builder<InlineResponse2003Districts,
            InlineResponse2003DistrictsBuilder> {
  _$InlineResponse2003Districts _$v;

  num _stateId;
  num get stateId => _$this._stateId;
  set stateId(num stateId) => _$this._stateId = stateId;

  num _districtId;
  num get districtId => _$this._districtId;
  set districtId(num districtId) => _$this._districtId = districtId;

  String _districtName;
  String get districtName => _$this._districtName;
  set districtName(String districtName) => _$this._districtName = districtName;

  String _districtNameL;
  String get districtNameL => _$this._districtNameL;
  set districtNameL(String districtNameL) =>
      _$this._districtNameL = districtNameL;

  InlineResponse2003DistrictsBuilder() {
    InlineResponse2003Districts._initializeBuilder(this);
  }

  InlineResponse2003DistrictsBuilder get _$this {
    if (_$v != null) {
      _stateId = _$v.stateId;
      _districtId = _$v.districtId;
      _districtName = _$v.districtName;
      _districtNameL = _$v.districtNameL;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2003Districts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse2003Districts;
  }

  @override
  void update(void Function(InlineResponse2003DistrictsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse2003Districts build() {
    final _$result = _$v ??
        new _$InlineResponse2003Districts._(
            stateId: stateId,
            districtId: districtId,
            districtName: districtName,
            districtNameL: districtNameL);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
