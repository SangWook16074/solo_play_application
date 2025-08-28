// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginUiEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginUiEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginUiEvent()';
  }
}

/// @nodoc
class $LoginUiEventCopyWith<$Res> {
  $LoginUiEventCopyWith(LoginUiEvent _, $Res Function(LoginUiEvent) __);
}

/// @nodoc

class LoginUiEmailChanged implements LoginUiEvent {
  const LoginUiEmailChanged({required this.email});

  final String email;

  /// Create a copy of LoginUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginUiEmailChangedCopyWith<LoginUiEmailChanged> get copyWith =>
      _$LoginUiEmailChangedCopyWithImpl<LoginUiEmailChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginUiEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'LoginUiEvent.emailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class $LoginUiEmailChangedCopyWith<$Res>
    implements $LoginUiEventCopyWith<$Res> {
  factory $LoginUiEmailChangedCopyWith(
          LoginUiEmailChanged value, $Res Function(LoginUiEmailChanged) _then) =
      _$LoginUiEmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$LoginUiEmailChangedCopyWithImpl<$Res>
    implements $LoginUiEmailChangedCopyWith<$Res> {
  _$LoginUiEmailChangedCopyWithImpl(this._self, this._then);

  final LoginUiEmailChanged _self;
  final $Res Function(LoginUiEmailChanged) _then;

  /// Create a copy of LoginUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(LoginUiEmailChanged(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoginUiPasswordChanged implements LoginUiEvent {
  const LoginUiPasswordChanged({required this.password});

  final String password;

  /// Create a copy of LoginUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginUiPasswordChangedCopyWith<LoginUiPasswordChanged> get copyWith =>
      _$LoginUiPasswordChangedCopyWithImpl<LoginUiPasswordChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginUiPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'LoginUiEvent.passwordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginUiPasswordChangedCopyWith<$Res>
    implements $LoginUiEventCopyWith<$Res> {
  factory $LoginUiPasswordChangedCopyWith(LoginUiPasswordChanged value,
          $Res Function(LoginUiPasswordChanged) _then) =
      _$LoginUiPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$LoginUiPasswordChangedCopyWithImpl<$Res>
    implements $LoginUiPasswordChangedCopyWith<$Res> {
  _$LoginUiPasswordChangedCopyWithImpl(this._self, this._then);

  final LoginUiPasswordChanged _self;
  final $Res Function(LoginUiPasswordChanged) _then;

  /// Create a copy of LoginUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(LoginUiPasswordChanged(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoginUiObscureTextToggled implements LoginUiEvent {
  const LoginUiObscureTextToggled();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginUiObscureTextToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginUiEvent.obscureTextToggle()';
  }
}

/// @nodoc

class LoginUiLoginButtonTap implements LoginUiEvent {
  const LoginUiLoginButtonTap();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginUiLoginButtonTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginUiEvent.loginButtonTap()';
  }
}

/// @nodoc

class LoginUiSignUpButtonTap implements LoginUiEvent {
  const LoginUiSignUpButtonTap();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginUiSignUpButtonTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginUiEvent.signUpButtonTap()';
  }
}

// dart format on
