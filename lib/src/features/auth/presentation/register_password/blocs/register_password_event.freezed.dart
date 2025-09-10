// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterPasswordEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterPasswordEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterPasswordEvent()';
  }
}

/// @nodoc
class $RegisterPasswordEventCopyWith<$Res> {
  $RegisterPasswordEventCopyWith(
      RegisterPasswordEvent _, $Res Function(RegisterPasswordEvent) __);
}

/// @nodoc

class RegisterPasswordChanged implements RegisterPasswordEvent {
  const RegisterPasswordChanged();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterPasswordChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterPasswordEvent.changed()';
  }
}

/// @nodoc

class RegisterPasswordCheckChanged implements RegisterPasswordEvent {
  const RegisterPasswordCheckChanged();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterPasswordCheckChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterPasswordEvent.checkChanged()';
  }
}

/// @nodoc

class ObscurePasswordToggled implements RegisterPasswordEvent {
  const ObscurePasswordToggled();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ObscurePasswordToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterPasswordEvent.obscurePasswordToggled()';
  }
}

/// @nodoc

class ObscurePasswordCheckToggled implements RegisterPasswordEvent {
  const ObscurePasswordCheckToggled();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ObscurePasswordCheckToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterPasswordEvent.obscurePasswordCheckToggled()';
  }
}

// dart format on
