// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'inline_response2002_states.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineResponse2002States extends InlineResponse2002States {
  @override
  final num stateId;
  @override
  final String stateName;
  @override
  final String stateNameL;

  factory _$InlineResponse2002States(
          [void Function(InlineResponse2002StatesBuilder) updates]) =>
      (new InlineResponse2002StatesBuilder()..update(updates)).build();

  _$InlineResponse2002States._({this.stateId, this.stateName, this.stateNameL})
      : super._() {
    if (stateId == null) {
      throw new BuiltValueNullFieldError('InlineResponse2002States', 'stateId');
    }
    if (stateName == null) {
      throw new BuiltValueNullFieldError(
          'InlineResponse2002States', 'stateName');
    }
  }

  @override
  InlineResponse2002States rebuild(
          void Function(InlineResponse2002StatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2002StatesBuilder toBuilder() =>
      new InlineResponse2002StatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2002States &&
        stateId == other.stateId &&
        stateName == other.stateName &&
        stateNameL == other.stateNameL;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, stateId.hashCode), stateName.hashCode),
        stateNameL.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse2002States')
          ..add('stateId', stateId)
          ..add('stateName', stateName)
          ..add('stateNameL', stateNameL))
        .toString();
  }
}

class InlineResponse2002StatesBuilder
    implements
        Builder<InlineResponse2002States, InlineResponse2002StatesBuilder> {
  _$InlineResponse2002States _$v;

  num _stateId;
  num get stateId => _$this._stateId;
  set stateId(num stateId) => _$this._stateId = stateId;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  String _stateNameL;
  String get stateNameL => _$this._stateNameL;
  set stateNameL(String stateNameL) => _$this._stateNameL = stateNameL;

  InlineResponse2002StatesBuilder() {
    InlineResponse2002States._initializeBuilder(this);
  }

  InlineResponse2002StatesBuilder get _$this {
    if (_$v != null) {
      _stateId = _$v.stateId;
      _stateName = _$v.stateName;
      _stateNameL = _$v.stateNameL;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2002States other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse2002States;
  }

  @override
  void update(void Function(InlineResponse2002StatesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse2002States build() {
    final _$result = _$v ??
        new _$InlineResponse2002States._(
            stateId: stateId, stateName: stateName, stateNameL: stateNameL);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
