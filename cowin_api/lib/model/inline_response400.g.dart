// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'inline_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineResponse400 extends InlineResponse400 {
  @override
  final String errorCode;
  @override
  final String error;

  factory _$InlineResponse400(
          [void Function(InlineResponse400Builder) updates]) =>
      (new InlineResponse400Builder()..update(updates)).build();

  _$InlineResponse400._({this.errorCode, this.error}) : super._();

  @override
  InlineResponse400 rebuild(void Function(InlineResponse400Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse400Builder toBuilder() =>
      new InlineResponse400Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse400 &&
        errorCode == other.errorCode &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, errorCode.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse400')
          ..add('errorCode', errorCode)
          ..add('error', error))
        .toString();
  }
}

class InlineResponse400Builder
    implements Builder<InlineResponse400, InlineResponse400Builder> {
  _$InlineResponse400 _$v;

  String _errorCode;
  String get errorCode => _$this._errorCode;
  set errorCode(String errorCode) => _$this._errorCode = errorCode;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  InlineResponse400Builder() {
    InlineResponse400._initializeBuilder(this);
  }

  InlineResponse400Builder get _$this {
    if (_$v != null) {
      _errorCode = _$v.errorCode;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse400 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse400;
  }

  @override
  void update(void Function(InlineResponse400Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse400 build() {
    final _$result =
        _$v ?? new _$InlineResponse400._(errorCode: errorCode, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
