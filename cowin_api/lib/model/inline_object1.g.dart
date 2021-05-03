// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'inline_object1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineObject1 extends InlineObject1 {
  @override
  final String otp;
  @override
  final String txnId;

  factory _$InlineObject1([void Function(InlineObject1Builder) updates]) =>
      (new InlineObject1Builder()..update(updates)).build();

  _$InlineObject1._({this.otp, this.txnId}) : super._();

  @override
  InlineObject1 rebuild(void Function(InlineObject1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject1Builder toBuilder() => new InlineObject1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject1 && otp == other.otp && txnId == other.txnId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, otp.hashCode), txnId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject1')
          ..add('otp', otp)
          ..add('txnId', txnId))
        .toString();
  }
}

class InlineObject1Builder
    implements Builder<InlineObject1, InlineObject1Builder> {
  _$InlineObject1 _$v;

  String _otp;
  String get otp => _$this._otp;
  set otp(String otp) => _$this._otp = otp;

  String _txnId;
  String get txnId => _$this._txnId;
  set txnId(String txnId) => _$this._txnId = txnId;

  InlineObject1Builder() {
    InlineObject1._initializeBuilder(this);
  }

  InlineObject1Builder get _$this {
    if (_$v != null) {
      _otp = _$v.otp;
      _txnId = _$v.txnId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject1 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject1;
  }

  @override
  void update(void Function(InlineObject1Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject1 build() {
    final _$result = _$v ?? new _$InlineObject1._(otp: otp, txnId: txnId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
