// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_verification_email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendVerificationEmailResponse {
  String get message;

  /// Create a copy of SendVerificationEmailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendVerificationEmailResponseCopyWith<SendVerificationEmailResponse>
      get copyWith => _$SendVerificationEmailResponseCopyWithImpl<
              SendVerificationEmailResponse>(
          this as SendVerificationEmailResponse, _$identity);

  /// Serializes this SendVerificationEmailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendVerificationEmailResponse &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SendVerificationEmailResponse(message: $message)';
  }
}

/// @nodoc
abstract mixin class $SendVerificationEmailResponseCopyWith<$Res> {
  factory $SendVerificationEmailResponseCopyWith(
          SendVerificationEmailResponse value,
          $Res Function(SendVerificationEmailResponse) _then) =
      _$SendVerificationEmailResponseCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SendVerificationEmailResponseCopyWithImpl<$Res>
    implements $SendVerificationEmailResponseCopyWith<$Res> {
  _$SendVerificationEmailResponseCopyWithImpl(this._self, this._then);

  final SendVerificationEmailResponse _self;
  final $Res Function(SendVerificationEmailResponse) _then;

  /// Create a copy of SendVerificationEmailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SendVerificationEmailResponse implements SendVerificationEmailResponse {
  const _SendVerificationEmailResponse({required this.message});
  factory _SendVerificationEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationEmailResponseFromJson(json);

  @override
  final String message;

  /// Create a copy of SendVerificationEmailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendVerificationEmailResponseCopyWith<_SendVerificationEmailResponse>
      get copyWith => __$SendVerificationEmailResponseCopyWithImpl<
          _SendVerificationEmailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SendVerificationEmailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendVerificationEmailResponse &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SendVerificationEmailResponse(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SendVerificationEmailResponseCopyWith<$Res>
    implements $SendVerificationEmailResponseCopyWith<$Res> {
  factory _$SendVerificationEmailResponseCopyWith(
          _SendVerificationEmailResponse value,
          $Res Function(_SendVerificationEmailResponse) _then) =
      __$SendVerificationEmailResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$SendVerificationEmailResponseCopyWithImpl<$Res>
    implements _$SendVerificationEmailResponseCopyWith<$Res> {
  __$SendVerificationEmailResponseCopyWithImpl(this._self, this._then);

  final _SendVerificationEmailResponse _self;
  final $Res Function(_SendVerificationEmailResponse) _then;

  /// Create a copy of SendVerificationEmailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_SendVerificationEmailResponse(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
