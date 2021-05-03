// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'inline_response2003.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineResponse2003 extends InlineResponse2003 {
  @override
  final BuiltSet<InlineResponse2003Districts> districts;
  @override
  final num ttl;

  factory _$InlineResponse2003(
          [void Function(InlineResponse2003Builder) updates]) =>
      (new InlineResponse2003Builder()..update(updates)).build();

  _$InlineResponse2003._({this.districts, this.ttl}) : super._();

  @override
  InlineResponse2003 rebuild(
          void Function(InlineResponse2003Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2003Builder toBuilder() =>
      new InlineResponse2003Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2003 &&
        districts == other.districts &&
        ttl == other.ttl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, districts.hashCode), ttl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse2003')
          ..add('districts', districts)
          ..add('ttl', ttl))
        .toString();
  }
}

class InlineResponse2003Builder
    implements Builder<InlineResponse2003, InlineResponse2003Builder> {
  _$InlineResponse2003 _$v;

  SetBuilder<InlineResponse2003Districts> _districts;
  SetBuilder<InlineResponse2003Districts> get districts =>
      _$this._districts ??= new SetBuilder<InlineResponse2003Districts>();
  set districts(SetBuilder<InlineResponse2003Districts> districts) =>
      _$this._districts = districts;

  num _ttl;
  num get ttl => _$this._ttl;
  set ttl(num ttl) => _$this._ttl = ttl;

  InlineResponse2003Builder() {
    InlineResponse2003._initializeBuilder(this);
  }

  InlineResponse2003Builder get _$this {
    if (_$v != null) {
      _districts = _$v.districts?.toBuilder();
      _ttl = _$v.ttl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2003 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse2003;
  }

  @override
  void update(void Function(InlineResponse2003Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse2003 build() {
    _$InlineResponse2003 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse2003._(districts: _districts?.build(), ttl: ttl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'districts';
        _districts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse2003', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
