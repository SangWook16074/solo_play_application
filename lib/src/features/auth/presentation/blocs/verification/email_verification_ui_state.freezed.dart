// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailVerificationUiState {
  String get userInputCode;
  String get userEmail;
  bool get isInit;

  /// Create a copy of EmailVerificationUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmailVerificationUiStateCopyWith<EmailVerificationUiState> get copyWith =>
      _$EmailVerificationUiStateCopyWithImpl<EmailVerificationUiState>(
          this as EmailVerificationUiState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailVerificationUiState &&
            (identical(other.userInputCode, userInputCode) ||
                other.userInputCode == userInputCode) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.isInit, isInit) || other.isInit == isInit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userInputCode, userEmail, isInit);

  @override
  String toString() {
    return 'EmailVerificationUiState(userInputCode: $userInputCode, userEmail: $userEmail, isInit: $isInit)';
  }
}

/// @nodoc
abstract mixin class $EmailVerificationUiStateCopyWith<$Res> {
  factory $EmailVerificationUiStateCopyWith(EmailVerificationUiState value,
          $Res Function(EmailVerificationUiState) _then) =
      _$EmailVerificationUiStateCopyWithImpl;
  @useResult
  $Res call({String userInputCode, String userEmail, bool isInit});
}

/// @nodoc
class _$EmailVerificationUiStateCopyWithImpl<$Res>
    implements $EmailVerificationUiStateCopyWith<$Res> {
  _$EmailVerificationUiStateCopyWithImpl(this._self, this._then);

  final EmailVerificationUiState _self;
  final $Res Function(EmailVerificationUiState) _then;

  /// Create a copy of EmailVerificationUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInputCode = null,
    Object? userEmail = null,
    Object? isInit = null,
  }) {
    return _then(_self.copyWith(
      userInputCode: null == userInputCode
          ? _self.userInputCode
          : userInputCode // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _self.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      isInit: null == isInit
          ? _self.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _EmailVerificationUiState implements EmailVerificationUiState {
  const _EmailVerificationUiState(
      {this.userInputCode = "", required this.userEmail, this.isInit = true});

  @override
  @JsonKey()
  final String userInputCode;
  @override
  final String userEmail;
  @override
  @JsonKey()
  final bool isInit;

  /// Create a copy of EmailVerificationUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmailVerificationUiStateCopyWith<_EmailVerificationUiState> get copyWith =>
      __$EmailVerificationUiStateCopyWithImpl<_EmailVerificationUiState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailVerificationUiState &&
            (identical(other.userInputCode, userInputCode) ||
                other.userInputCode == userInputCode) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.isInit, isInit) || other.isInit == isInit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userInputCode, userEmail, isInit);

  @override
  String toString() {
    return 'EmailVerificationUiState(userInputCode: $userInputCode, userEmail: $userEmail, isInit: $isInit)';
  }
}

/// @nodoc
abstract mixin class _$EmailVerificationUiStateCopyWith<$Res>
    implements $EmailVerificationUiStateCopyWith<$Res> {
  factory _$EmailVerificationUiStateCopyWith(_EmailVerificationUiState value,
          $Res Function(_EmailVerificationUiState) _then) =
      __$EmailVerificationUiStateCopyWithImpl;
  @override
  @useResult
  $Res call({String userInputCode, String userEmail, bool isInit});
}

/// @nodoc
class __$EmailVerificationUiStateCopyWithImpl<$Res>
    implements _$EmailVerificationUiStateCopyWith<$Res> {
  __$EmailVerificationUiStateCopyWithImpl(this._self, this._then);

  final _EmailVerificationUiState _self;
  final $Res Function(_EmailVerificationUiState) _then;

  /// Create a copy of EmailVerificationUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userInputCode = null,
    Object? userEmail = null,
    Object? isInit = null,
  }) {
    return _then(_EmailVerificationUiState(
      userInputCode: null == userInputCode
          ? _self.userInputCode
          : userInputCode // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _self.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      isInit: null == isInit
          ? _self.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
