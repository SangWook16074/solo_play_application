// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginUiState {
  String get email;
  String get password;
  bool get obscureText;

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginUiStateCopyWith<LoginUiState> get copyWith =>
      _$LoginUiStateCopyWithImpl<LoginUiState>(
          this as LoginUiState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginUiState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, obscureText);

  @override
  String toString() {
    return 'LoginUiState(email: $email, password: $password, obscureText: $obscureText)';
  }
}

/// @nodoc
abstract mixin class $LoginUiStateCopyWith<$Res> {
  factory $LoginUiStateCopyWith(
          LoginUiState value, $Res Function(LoginUiState) _then) =
      _$LoginUiStateCopyWithImpl;
  @useResult
  $Res call({String email, String password, bool obscureText});
}

/// @nodoc
class _$LoginUiStateCopyWithImpl<$Res> implements $LoginUiStateCopyWith<$Res> {
  _$LoginUiStateCopyWithImpl(this._self, this._then);

  final LoginUiState _self;
  final $Res Function(LoginUiState) _then;

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? obscureText = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      obscureText: null == obscureText
          ? _self.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _LoginUiState implements LoginUiState {
  const _LoginUiState(
      {this.email = "", this.password = "", this.obscureText = true});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool obscureText;

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginUiStateCopyWith<_LoginUiState> get copyWith =>
      __$LoginUiStateCopyWithImpl<_LoginUiState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginUiState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, obscureText);

  @override
  String toString() {
    return 'LoginUiState(email: $email, password: $password, obscureText: $obscureText)';
  }
}

/// @nodoc
abstract mixin class _$LoginUiStateCopyWith<$Res>
    implements $LoginUiStateCopyWith<$Res> {
  factory _$LoginUiStateCopyWith(
          _LoginUiState value, $Res Function(_LoginUiState) _then) =
      __$LoginUiStateCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password, bool obscureText});
}

/// @nodoc
class __$LoginUiStateCopyWithImpl<$Res>
    implements _$LoginUiStateCopyWith<$Res> {
  __$LoginUiStateCopyWithImpl(this._self, this._then);

  final _LoginUiState _self;
  final $Res Function(_LoginUiState) _then;

  /// Create a copy of LoginUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? obscureText = null,
  }) {
    return _then(_LoginUiState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      obscureText: null == obscureText
          ? _self.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
