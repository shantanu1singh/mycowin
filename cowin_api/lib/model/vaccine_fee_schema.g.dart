// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'vaccine_fee_schema.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VaccineFeeSchema extends VaccineFeeSchema {
  @override
  final String vaccine;
  @override
  final String fee;

  factory _$VaccineFeeSchema(
          [void Function(VaccineFeeSchemaBuilder) updates]) =>
      (new VaccineFeeSchemaBuilder()..update(updates)).build();

  _$VaccineFeeSchema._({this.vaccine, this.fee}) : super._() {
    if (vaccine == null) {
      throw new BuiltValueNullFieldError('VaccineFeeSchema', 'vaccine');
    }
    if (fee == null) {
      throw new BuiltValueNullFieldError('VaccineFeeSchema', 'fee');
    }
  }

  @override
  VaccineFeeSchema rebuild(void Function(VaccineFeeSchemaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VaccineFeeSchemaBuilder toBuilder() =>
      new VaccineFeeSchemaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VaccineFeeSchema &&
        vaccine == other.vaccine &&
        fee == other.fee;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vaccine.hashCode), fee.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VaccineFeeSchema')
          ..add('vaccine', vaccine)
          ..add('fee', fee))
        .toString();
  }
}

class VaccineFeeSchemaBuilder
    implements Builder<VaccineFeeSchema, VaccineFeeSchemaBuilder> {
  _$VaccineFeeSchema _$v;

  String _vaccine;
  String get vaccine => _$this._vaccine;
  set vaccine(String vaccine) => _$this._vaccine = vaccine;

  String _fee;
  String get fee => _$this._fee;
  set fee(String fee) => _$this._fee = fee;

  VaccineFeeSchemaBuilder() {
    VaccineFeeSchema._initializeBuilder(this);
  }

  VaccineFeeSchemaBuilder get _$this {
    if (_$v != null) {
      _vaccine = _$v.vaccine;
      _fee = _$v.fee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VaccineFeeSchema other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VaccineFeeSchema;
  }

  @override
  void update(void Function(VaccineFeeSchemaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VaccineFeeSchema build() {
    final _$result =
        _$v ?? new _$VaccineFeeSchema._(vaccine: vaccine, fee: fee);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
