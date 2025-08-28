// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_verification_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendVerificationEmailRequest {
  String get email;

  /// Create a copy of SendVerificationEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendVerificationEmailRequestCopyWith<SendVerificationEmailRequest>
      get copyWith => _$SendVerificationEmailRequestCopyWithImpl<
              SendVerificationEmailRequest>(
          this as SendVerificationEmailRequest, _$identity);

  /// Serializes this SendVerificationEmailRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendVerificationEmailRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'SendVerificationEmailRequest(email: $email)';
  }
}

/// @nodoc
abstract mixin class $SendVerificationEmailRequestCopyWith<$Res> {
  factory $SendVerificationEmailRequestCopyWith(
          SendVerificationEmailRequest value,
          $Res Function(SendVerificationEmailRequest) _then) =
      _$SendVerificationEmailRequestCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SendVerificationEmailRequestCopyWithImpl<$Res>
    implements $SendVerificationEmailRequestCopyWith<$Res> {
  _$SendVerificationEmailRequestCopyWithImpl(this._self, this._then);

  final SendVerificationEmailRequest _self;
  final $Res Function(SendVerificationEmailRequest) _then;

  /// Create a copy of SendVerificationEmailRequest
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
@JsonSerializable()
class _SendVerificationEmailRequest implements SendVerificationEmailRequest {
  const _SendVerificationEmailRequest({required this.email});
  factory _SendVerificationEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationEmailRequestFromJson(json);

  @override
  final String email;

  /// Create a copy of SendVerificationEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendVerificationEmailRequestCopyWith<_SendVerificationEmailRequest>
      get copyWith => __$SendVerificationEmailRequestCopyWithImpl<
          _SendVerificationEmailRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SendVerificationEmailRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendVerificationEmailRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'SendVerificationEmailRequest(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$SendVerificationEmailRequestCopyWith<$Res>
    implements $SendVerificationEmailRequestCopyWith<$Res> {
  factory _$SendVerificationEmailRequestCopyWith(
          _SendVerificationEmailRequest value,
          $Res Function(_SendVerificationEmailRequest) _then) =
      __$SendVerificationEmailRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$SendVerificationEmailRequestCopyWithImpl<$Res>
    implements _$SendVerificationEmailRequestCopyWith<$Res> {
  __$SendVerificationEmailRequestCopyWithImpl(this._self, this._then);

  final _SendVerificationEmailRequest _self;
  final $Res Function(_SendVerificationEmailRequest) _then;

  /// Create a copy of SendVerificationEmailRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_SendVerificationEmailRequest(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
