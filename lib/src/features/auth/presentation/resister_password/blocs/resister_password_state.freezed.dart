// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resister_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResisterPasswordState {
  String get password;
  bool get obscurePassword;
  String get passwordCheck;
  bool get obscurePasswordCheck;

  /// Create a copy of ResisterPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResisterPasswordStateCopyWith<ResisterPasswordState> get copyWith =>
      _$ResisterPasswordStateCopyWithImpl<ResisterPasswordState>(
          this as ResisterPasswordState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResisterPasswordState &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.passwordCheck, passwordCheck) ||
                other.passwordCheck == passwordCheck) &&
            (identical(other.obscurePasswordCheck, obscurePasswordCheck) ||
                other.obscurePasswordCheck == obscurePasswordCheck));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, obscurePassword,
      passwordCheck, obscurePasswordCheck);

  @override
  String toString() {
    return 'ResisterPasswordState(password: $password, obscurePassword: $obscurePassword, passwordCheck: $passwordCheck, obscurePasswordCheck: $obscurePasswordCheck)';
  }
}

/// @nodoc
abstract mixin class $ResisterPasswordStateCopyWith<$Res> {
  factory $ResisterPasswordStateCopyWith(ResisterPasswordState value,
          $Res Function(ResisterPasswordState) _then) =
      _$ResisterPasswordStateCopyWithImpl;
  @useResult
  $Res call(
      {String password,
      bool obscurePassword,
      String passwordCheck,
      bool obscurePasswordCheck});
}

/// @nodoc
class _$ResisterPasswordStateCopyWithImpl<$Res>
    implements $ResisterPasswordStateCopyWith<$Res> {
  _$ResisterPasswordStateCopyWithImpl(this._self, this._then);

  final ResisterPasswordState _self;
  final $Res Function(ResisterPasswordState) _then;

  /// Create a copy of ResisterPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? obscurePassword = null,
    Object? passwordCheck = null,
    Object? obscurePasswordCheck = null,
  }) {
    return _then(_self.copyWith(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      obscurePassword: null == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordCheck: null == passwordCheck
          ? _self.passwordCheck
          : passwordCheck // ignore: cast_nullable_to_non_nullable
              as String,
      obscurePasswordCheck: null == obscurePasswordCheck
          ? _self.obscurePasswordCheck
          : obscurePasswordCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _ResisterPasswordState extends ResisterPasswordState {
  const _ResisterPasswordState(
      {this.password = "",
      this.obscurePassword = true,
      this.passwordCheck = "",
      this.obscurePasswordCheck = true})
      : super._();

  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool obscurePassword;
  @override
  @JsonKey()
  final String passwordCheck;
  @override
  @JsonKey()
  final bool obscurePasswordCheck;

  /// Create a copy of ResisterPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResisterPasswordStateCopyWith<_ResisterPasswordState> get copyWith =>
      __$ResisterPasswordStateCopyWithImpl<_ResisterPasswordState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResisterPasswordState &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.passwordCheck, passwordCheck) ||
                other.passwordCheck == passwordCheck) &&
            (identical(other.obscurePasswordCheck, obscurePasswordCheck) ||
                other.obscurePasswordCheck == obscurePasswordCheck));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, obscurePassword,
      passwordCheck, obscurePasswordCheck);

  @override
  String toString() {
    return 'ResisterPasswordState(password: $password, obscurePassword: $obscurePassword, passwordCheck: $passwordCheck, obscurePasswordCheck: $obscurePasswordCheck)';
  }
}

/// @nodoc
abstract mixin class _$ResisterPasswordStateCopyWith<$Res>
    implements $ResisterPasswordStateCopyWith<$Res> {
  factory _$ResisterPasswordStateCopyWith(_ResisterPasswordState value,
          $Res Function(_ResisterPasswordState) _then) =
      __$ResisterPasswordStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String password,
      bool obscurePassword,
      String passwordCheck,
      bool obscurePasswordCheck});
}

/// @nodoc
class __$ResisterPasswordStateCopyWithImpl<$Res>
    implements _$ResisterPasswordStateCopyWith<$Res> {
  __$ResisterPasswordStateCopyWithImpl(this._self, this._then);

  final _ResisterPasswordState _self;
  final $Res Function(_ResisterPasswordState) _then;

  /// Create a copy of ResisterPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
    Object? obscurePassword = null,
    Object? passwordCheck = null,
    Object? obscurePasswordCheck = null,
  }) {
    return _then(_ResisterPasswordState(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      obscurePassword: null == obscurePassword
          ? _self.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordCheck: null == passwordCheck
          ? _self.passwordCheck
          : passwordCheck // ignore: cast_nullable_to_non_nullable
              as String,
      obscurePasswordCheck: null == obscurePasswordCheck
          ? _self.obscurePasswordCheck
          : obscurePasswordCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
