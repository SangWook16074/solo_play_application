// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_resister_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasswordResisterUiState {
  String get password;
  String get passwordCheck;
  bool get obscurePassword;
  bool get obscurePasswordCheck;

  /// Create a copy of PasswordResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PasswordResisterUiStateCopyWith<PasswordResisterUiState> get copyWith =>
      _$PasswordResisterUiStateCopyWithImpl<PasswordResisterUiState>(
          this as PasswordResisterUiState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordResisterUiState &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordCheck, passwordCheck) ||
                other.passwordCheck == passwordCheck) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.obscurePasswordCheck, obscurePasswordCheck) ||
                other.obscurePasswordCheck == obscurePasswordCheck));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, passwordCheck,
      obscurePassword, obscurePasswordCheck);

  @override
  String toString() {
    return 'PasswordResisterUiState(password: $password, passwordCheck: $passwordCheck, obscurePassword: $obscurePassword, obscurePasswordCheck: $obscurePasswordCheck)';
  }
}

/// @nodoc
abstract mixin class $PasswordResisterUiStateCopyWith<$Res> {
  factory $PasswordResisterUiStateCopyWith(PasswordResisterUiState value,
          $Res Function(PasswordResisterUiState) _then) =
      _$PasswordResisterUiStateCopyWithImpl;
  @useResult
  $Res call(
      {String password,
      String passwordCheck,
      bool obscurePassword,
      bool obscurePasswordCheck});
}

/// @nodoc
class _$PasswordResisterUiStateCopyWithImpl<$Res>
    implements $PasswordResisterUiStateCopyWith<$Res> {
  _$PasswordResisterUiStateCopyWithImpl(this._self, this._then);

  final PasswordResisterUiState _self;
  final $Res Function(PasswordResisterUiState) _then;

  /// Create a copy of PasswordResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordCheck = null,
    Object? obscurePassword = null,
    Object? obscurePasswordCheck = null,
  }) {
    return _then(_self.copyWith(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordCheck: null == passwordCheck
          ? _self.passwordCheck
          : passwordCheck // ignore: cast_nullable_to_non_nullable
              as String,
      obscurePassword: null == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePasswordCheck: null == obscurePasswordCheck
          ? _self.obscurePasswordCheck
          : obscurePasswordCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _PasswordResisterUiState extends PasswordResisterUiState {
  const _PasswordResisterUiState(
      {this.password = "",
      this.passwordCheck = "",
      this.obscurePassword = true,
      this.obscurePasswordCheck = true})
      : super._();

  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String passwordCheck;
  @override
  @JsonKey()
  final bool obscurePassword;
  @override
  @JsonKey()
  final bool obscurePasswordCheck;

  /// Create a copy of PasswordResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PasswordResisterUiStateCopyWith<_PasswordResisterUiState> get copyWith =>
      __$PasswordResisterUiStateCopyWithImpl<_PasswordResisterUiState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordResisterUiState &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordCheck, passwordCheck) ||
                other.passwordCheck == passwordCheck) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.obscurePasswordCheck, obscurePasswordCheck) ||
                other.obscurePasswordCheck == obscurePasswordCheck));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, passwordCheck,
      obscurePassword, obscurePasswordCheck);

  @override
  String toString() {
    return 'PasswordResisterUiState(password: $password, passwordCheck: $passwordCheck, obscurePassword: $obscurePassword, obscurePasswordCheck: $obscurePasswordCheck)';
  }
}

/// @nodoc
abstract mixin class _$PasswordResisterUiStateCopyWith<$Res>
    implements $PasswordResisterUiStateCopyWith<$Res> {
  factory _$PasswordResisterUiStateCopyWith(_PasswordResisterUiState value,
          $Res Function(_PasswordResisterUiState) _then) =
      __$PasswordResisterUiStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String password,
      String passwordCheck,
      bool obscurePassword,
      bool obscurePasswordCheck});
}

/// @nodoc
class __$PasswordResisterUiStateCopyWithImpl<$Res>
    implements _$PasswordResisterUiStateCopyWith<$Res> {
  __$PasswordResisterUiStateCopyWithImpl(this._self, this._then);

  final _PasswordResisterUiState _self;
  final $Res Function(_PasswordResisterUiState) _then;

  /// Create a copy of PasswordResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
    Object? passwordCheck = null,
    Object? obscurePassword = null,
    Object? obscurePasswordCheck = null,
  }) {
    return _then(_PasswordResisterUiState(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordCheck: null == passwordCheck
          ? _self.passwordCheck
          : passwordCheck // ignore: cast_nullable_to_non_nullable
              as String,
      obscurePassword: null == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePasswordCheck: null == obscurePasswordCheck
          ? _self.obscurePasswordCheck
          : obscurePasswordCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
