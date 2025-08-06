// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_resister_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasswordResisterUiEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PasswordResisterUiEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PasswordResisterUiEvent()';
  }
}

/// @nodoc
class $PasswordResisterUiEventCopyWith<$Res> {
  $PasswordResisterUiEventCopyWith(
      PasswordResisterUiEvent _, $Res Function(PasswordResisterUiEvent) __);
}

/// @nodoc

class UserPasswordChanged implements PasswordResisterUiEvent {
  const UserPasswordChanged({required this.password});

  final String password;

  /// Create a copy of PasswordResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserPasswordChangedCopyWith<UserPasswordChanged> get copyWith =>
      _$UserPasswordChangedCopyWithImpl<UserPasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'PasswordResisterUiEvent.userPasswordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class $UserPasswordChangedCopyWith<$Res>
    implements $PasswordResisterUiEventCopyWith<$Res> {
  factory $UserPasswordChangedCopyWith(
          UserPasswordChanged value, $Res Function(UserPasswordChanged) _then) =
      _$UserPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$UserPasswordChangedCopyWithImpl<$Res>
    implements $UserPasswordChangedCopyWith<$Res> {
  _$UserPasswordChangedCopyWithImpl(this._self, this._then);

  final UserPasswordChanged _self;
  final $Res Function(UserPasswordChanged) _then;

  /// Create a copy of PasswordResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(UserPasswordChanged(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserPasswordCheckChanged implements PasswordResisterUiEvent {
  const UserPasswordCheckChanged({required this.passwordCheck});

  final String passwordCheck;

  /// Create a copy of PasswordResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserPasswordCheckChangedCopyWith<UserPasswordCheckChanged> get copyWith =>
      _$UserPasswordCheckChangedCopyWithImpl<UserPasswordCheckChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPasswordCheckChanged &&
            (identical(other.passwordCheck, passwordCheck) ||
                other.passwordCheck == passwordCheck));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordCheck);

  @override
  String toString() {
    return 'PasswordResisterUiEvent.userPasswordCheckChanged(passwordCheck: $passwordCheck)';
  }
}

/// @nodoc
abstract mixin class $UserPasswordCheckChangedCopyWith<$Res>
    implements $PasswordResisterUiEventCopyWith<$Res> {
  factory $UserPasswordCheckChangedCopyWith(UserPasswordCheckChanged value,
          $Res Function(UserPasswordCheckChanged) _then) =
      _$UserPasswordCheckChangedCopyWithImpl;
  @useResult
  $Res call({String passwordCheck});
}

/// @nodoc
class _$UserPasswordCheckChangedCopyWithImpl<$Res>
    implements $UserPasswordCheckChangedCopyWith<$Res> {
  _$UserPasswordCheckChangedCopyWithImpl(this._self, this._then);

  final UserPasswordCheckChanged _self;
  final $Res Function(UserPasswordCheckChanged) _then;

  /// Create a copy of PasswordResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? passwordCheck = null,
  }) {
    return _then(UserPasswordCheckChanged(
      passwordCheck: null == passwordCheck
          ? _self.passwordCheck
          : passwordCheck // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserPasswordObscureToggle implements PasswordResisterUiEvent {
  const UserPasswordObscureToggle();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPasswordObscureToggle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PasswordResisterUiEvent.userPasswordObscureToggle()';
  }
}

/// @nodoc

class UserPasswordCheckObscureToggle implements PasswordResisterUiEvent {
  const UserPasswordCheckObscureToggle();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPasswordCheckObscureToggle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PasswordResisterUiEvent.userPasswordCheckObscureToggle()';
  }
}

// dart format on
