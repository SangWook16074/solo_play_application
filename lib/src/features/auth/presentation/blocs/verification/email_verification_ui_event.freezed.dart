// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailVerificationUiEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmailVerificationUiEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EmailVerificationUiEvent()';
  }
}

/// @nodoc
class $EmailVerificationUiEventCopyWith<$Res> {
  $EmailVerificationUiEventCopyWith(
      EmailVerificationUiEvent _, $Res Function(EmailVerificationUiEvent) __);
}

/// @nodoc

class UserInputCode implements EmailVerificationUiEvent {
  const UserInputCode({required this.code});

  final String code;

  /// Create a copy of EmailVerificationUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserInputCodeCopyWith<UserInputCode> get copyWith =>
      _$UserInputCodeCopyWithImpl<UserInputCode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserInputCode &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @override
  String toString() {
    return 'EmailVerificationUiEvent.userInputCode(code: $code)';
  }
}

/// @nodoc
abstract mixin class $UserInputCodeCopyWith<$Res>
    implements $EmailVerificationUiEventCopyWith<$Res> {
  factory $UserInputCodeCopyWith(
          UserInputCode value, $Res Function(UserInputCode) _then) =
      _$UserInputCodeCopyWithImpl;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$UserInputCodeCopyWithImpl<$Res>
    implements $UserInputCodeCopyWith<$Res> {
  _$UserInputCodeCopyWithImpl(this._self, this._then);

  final UserInputCode _self;
  final $Res Function(UserInputCode) _then;

  /// Create a copy of EmailVerificationUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
  }) {
    return _then(UserInputCode(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserSendAuthCodeRequest implements EmailVerificationUiEvent {
  const UserSendAuthCodeRequest({required this.email});

  final String email;

  /// Create a copy of EmailVerificationUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserSendAuthCodeRequestCopyWith<UserSendAuthCodeRequest> get copyWith =>
      _$UserSendAuthCodeRequestCopyWithImpl<UserSendAuthCodeRequest>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserSendAuthCodeRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'EmailVerificationUiEvent.userSendAuthCodeRequest(email: $email)';
  }
}

/// @nodoc
abstract mixin class $UserSendAuthCodeRequestCopyWith<$Res>
    implements $EmailVerificationUiEventCopyWith<$Res> {
  factory $UserSendAuthCodeRequestCopyWith(UserSendAuthCodeRequest value,
          $Res Function(UserSendAuthCodeRequest) _then) =
      _$UserSendAuthCodeRequestCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$UserSendAuthCodeRequestCopyWithImpl<$Res>
    implements $UserSendAuthCodeRequestCopyWith<$Res> {
  _$UserSendAuthCodeRequestCopyWithImpl(this._self, this._then);

  final UserSendAuthCodeRequest _self;
  final $Res Function(UserSendAuthCodeRequest) _then;

  /// Create a copy of EmailVerificationUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(UserSendAuthCodeRequest(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
