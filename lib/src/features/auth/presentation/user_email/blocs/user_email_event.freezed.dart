// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_email_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserEmailEvent {
  String get email;

  /// Create a copy of UserEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserEmailEventCopyWith<UserEmailEvent> get copyWith =>
      _$UserEmailEventCopyWithImpl<UserEmailEvent>(
          this as UserEmailEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserEmailEvent &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'UserEmailEvent(email: $email)';
  }
}

/// @nodoc
abstract mixin class $UserEmailEventCopyWith<$Res> {
  factory $UserEmailEventCopyWith(
          UserEmailEvent value, $Res Function(UserEmailEvent) _then) =
      _$UserEmailEventCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$UserEmailEventCopyWithImpl<$Res>
    implements $UserEmailEventCopyWith<$Res> {
  _$UserEmailEventCopyWithImpl(this._self, this._then);

  final UserEmailEvent _self;
  final $Res Function(UserEmailEvent) _then;

  /// Create a copy of UserEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserEmailChanged implements UserEmailEvent {
  const UserEmailChanged({required this.email});

  @override
  final String email;

  /// Create a copy of UserEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
    return 'UserEmailEvent.changed(email: $email)';
  }
}

/// @nodoc
abstract mixin class $UserEmailChangedCopyWith<$Res>
    implements $UserEmailEventCopyWith<$Res> {
  factory $UserEmailChangedCopyWith(
          UserEmailChanged value, $Res Function(UserEmailChanged) _then) =
      _$UserEmailChangedCopyWithImpl;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$UserEmailChangedCopyWithImpl<$Res>
    implements $UserEmailChangedCopyWith<$Res> {
  _$UserEmailChangedCopyWithImpl(this._self, this._then);

  final UserEmailChanged _self;
  final $Res Function(UserEmailChanged) _then;

  /// Create a copy of UserEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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

class UserEmailCheckDuplicate implements UserEmailEvent {
  const UserEmailCheckDuplicate({required this.email});

  @override
  final String email;

  /// Create a copy of UserEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserEmailCheckDuplicateCopyWith<UserEmailCheckDuplicate> get copyWith =>
      _$UserEmailCheckDuplicateCopyWithImpl<UserEmailCheckDuplicate>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserEmailCheckDuplicate &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'UserEmailEvent.checkDuplicate(email: $email)';
  }
}

/// @nodoc
abstract mixin class $UserEmailCheckDuplicateCopyWith<$Res>
    implements $UserEmailEventCopyWith<$Res> {
  factory $UserEmailCheckDuplicateCopyWith(UserEmailCheckDuplicate value,
          $Res Function(UserEmailCheckDuplicate) _then) =
      _$UserEmailCheckDuplicateCopyWithImpl;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$UserEmailCheckDuplicateCopyWithImpl<$Res>
    implements $UserEmailCheckDuplicateCopyWith<$Res> {
  _$UserEmailCheckDuplicateCopyWithImpl(this._self, this._then);

  final UserEmailCheckDuplicate _self;
  final $Res Function(UserEmailCheckDuplicate) _then;

  /// Create a copy of UserEmailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(UserEmailCheckDuplicate(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
