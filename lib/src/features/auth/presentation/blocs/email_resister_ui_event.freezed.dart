// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_resister_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailResisterUiEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmailResisterUiEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EmailResisterUiEvent()';
  }
}

/// @nodoc
class $EmailResisterUiEventCopyWith<$Res> {
  $EmailResisterUiEventCopyWith(
      EmailResisterUiEvent _, $Res Function(EmailResisterUiEvent) __);
}

/// @nodoc

class UserEmailChanged implements EmailResisterUiEvent {
  const UserEmailChanged({required this.email});

  final String email;

  /// Create a copy of EmailResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserEmailChangedCopyWith<UserEmailChanged> get copyWith =>
      _$UserEmailChangedCopyWithImpl<UserEmailChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'EmailResisterUiEvent.userEmailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class $UserEmailChangedCopyWith<$Res>
    implements $EmailResisterUiEventCopyWith<$Res> {
  factory $UserEmailChangedCopyWith(
          UserEmailChanged value, $Res Function(UserEmailChanged) _then) =
      _$UserEmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$UserEmailChangedCopyWithImpl<$Res>
    implements $UserEmailChangedCopyWith<$Res> {
  _$UserEmailChangedCopyWithImpl(this._self, this._then);

  final UserEmailChanged _self;
  final $Res Function(UserEmailChanged) _then;

  /// Create a copy of EmailResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(UserEmailChanged(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _EmailResisterUiEvent implements EmailResisterUiEvent {
  const _EmailResisterUiEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmailResisterUiEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EmailResisterUiEvent._()';
  }
}

// dart format on
