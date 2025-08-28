// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_duplicate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailDuplicateModel {
  String get result;
  bool get isAvail;

  /// Create a copy of EmailDuplicateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmailDuplicateModelCopyWith<EmailDuplicateModel> get copyWith =>
      _$EmailDuplicateModelCopyWithImpl<EmailDuplicateModel>(
          this as EmailDuplicateModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailDuplicateModel &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isAvail, isAvail) || other.isAvail == isAvail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, isAvail);

  @override
  String toString() {
    return 'EmailDuplicateModel(result: $result, isAvail: $isAvail)';
  }
}

/// @nodoc
abstract mixin class $EmailDuplicateModelCopyWith<$Res> {
  factory $EmailDuplicateModelCopyWith(
          EmailDuplicateModel value, $Res Function(EmailDuplicateModel) _then) =
      _$EmailDuplicateModelCopyWithImpl;
  @useResult
  $Res call({String result, bool isAvail});
}

/// @nodoc
class _$EmailDuplicateModelCopyWithImpl<$Res>
    implements $EmailDuplicateModelCopyWith<$Res> {
  _$EmailDuplicateModelCopyWithImpl(this._self, this._then);

  final EmailDuplicateModel _self;
  final $Res Function(EmailDuplicateModel) _then;

  /// Create a copy of EmailDuplicateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? isAvail = null,
  }) {
    return _then(_self.copyWith(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      isAvail: null == isAvail
          ? _self.isAvail
          : isAvail // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _EmailDuplicateModel extends EmailDuplicateModel {
  const _EmailDuplicateModel({required this.result, required this.isAvail})
      : super._();

  @override
  final String result;
  @override
  final bool isAvail;

  /// Create a copy of EmailDuplicateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmailDuplicateModelCopyWith<_EmailDuplicateModel> get copyWith =>
      __$EmailDuplicateModelCopyWithImpl<_EmailDuplicateModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailDuplicateModel &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isAvail, isAvail) || other.isAvail == isAvail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, isAvail);

  @override
  String toString() {
    return 'EmailDuplicateModel(result: $result, isAvail: $isAvail)';
  }
}

/// @nodoc
abstract mixin class _$EmailDuplicateModelCopyWith<$Res>
    implements $EmailDuplicateModelCopyWith<$Res> {
  factory _$EmailDuplicateModelCopyWith(_EmailDuplicateModel value,
          $Res Function(_EmailDuplicateModel) _then) =
      __$EmailDuplicateModelCopyWithImpl;
  @override
  @useResult
  $Res call({String result, bool isAvail});
}

/// @nodoc
class __$EmailDuplicateModelCopyWithImpl<$Res>
    implements _$EmailDuplicateModelCopyWith<$Res> {
  __$EmailDuplicateModelCopyWithImpl(this._self, this._then);

  final _EmailDuplicateModel _self;
  final $Res Function(_EmailDuplicateModel) _then;

  /// Create a copy of EmailDuplicateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
    Object? isAvail = null,
  }) {
    return _then(_EmailDuplicateModel(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      isAvail: null == isAvail
          ? _self.isAvail
          : isAvail // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
