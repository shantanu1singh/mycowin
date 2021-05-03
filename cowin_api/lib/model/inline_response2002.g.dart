// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'inline_response2002.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineResponse2002 extends InlineResponse2002 {
  @override
  final BuiltSet<InlineResponse2002States> states;
  @override
  final num ttl;

  factory _$InlineResponse2002(
          [void Function(InlineResponse2002Builder) updates]) =>
      (new InlineResponse2002Builder()..update(updates)).build();

  _$InlineResponse2002._({this.states, this.ttl}) : super._();

  @override
  InlineResponse2002 rebuild(
          void Function(InlineResponse2002Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2002Builder toBuilder() =>
      new InlineResponse2002Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2002 &&
        states == other.states &&
        ttl == other.ttl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, states.hashCode), ttl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse2002')
          ..add('states', states)
          ..add('ttl', ttl))
        .toString();
  }
}

class InlineResponse2002Builder
    implements Builder<InlineResponse2002, InlineResponse2002Builder> {
  _$InlineResponse2002 _$v;

  SetBuilder<InlineResponse2002States> _states;
  SetBuilder<InlineResponse2002States> get states =>
      _$this._states ??= new SetBuilder<InlineResponse2002States>();
  set states(SetBuilder<InlineResponse2002States> states) =>
      _$this._states = states;

  num _ttl;
  num get ttl => _$this._ttl;
  set ttl(num ttl) => _$this._ttl = ttl;

  InlineResponse2002Builder() {
    InlineResponse2002._initializeBuilder(this);
  }

  InlineResponse2002Builder get _$this {
    if (_$v != null) {
      _states = _$v.states?.toBuilder();
      _ttl = _$v.ttl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2002 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse2002;
  }

  @override
  void update(void Function(InlineResponse2002Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse2002 build() {
    _$InlineResponse2002 _$result;
    try {
      _$result =
          _$v ?? new _$InlineResponse2002._(states: _states?.build(), ttl: ttl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'states';
        _states?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse2002', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
