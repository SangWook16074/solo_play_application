// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginInfo {
  String get email;
  String get password;

  /// Create a copy of LoginInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginInfoCopyWith<LoginInfo> get copyWith =>
      _$LoginInfoCopyWithImpl<LoginInfo>(this as LoginInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginInfo &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginInfo(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginInfoCopyWith<$Res> {
  factory $LoginInfoCopyWith(LoginInfo value, $Res Function(LoginInfo) _then) =
      _$LoginInfoCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginInfoCopyWithImpl<$Res> implements $LoginInfoCopyWith<$Res> {
  _$LoginInfoCopyWithImpl(this._self, this._then);

  final LoginInfo _self;
  final $Res Function(LoginInfo) _then;

  /// Create a copy of LoginInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
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
    ));
  }
}

/// @nodoc

class _LoginInfo extends LoginInfo {
  const _LoginInfo({required this.email, required this.password}) : super._();

  @override
  final String email;
  @override
  final String password;

  /// Create a copy of LoginInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginInfoCopyWith<_LoginInfo> get copyWith =>
      __$LoginInfoCopyWithImpl<_LoginInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginInfo &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginInfo(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$LoginInfoCopyWith<$Res>
    implements $LoginInfoCopyWith<$Res> {
  factory _$LoginInfoCopyWith(
          _LoginInfo value, $Res Function(_LoginInfo) _then) =
      __$LoginInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginInfoCopyWithImpl<$Res> implements _$LoginInfoCopyWith<$Res> {
  __$LoginInfoCopyWithImpl(this._self, this._then);

  final _LoginInfo _self;
  final $Res Function(_LoginInfo) _then;

  /// Create a copy of LoginInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_LoginInfo(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
