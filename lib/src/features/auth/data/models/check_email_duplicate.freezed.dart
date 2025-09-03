// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_email_duplicate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckEmailDuplicateRequest {
  String get email;

  /// Create a copy of CheckEmailDuplicateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckEmailDuplicateRequestCopyWith<CheckEmailDuplicateRequest>
      get copyWith =>
          _$CheckEmailDuplicateRequestCopyWithImpl<CheckEmailDuplicateRequest>(
              this as CheckEmailDuplicateRequest, _$identity);

  /// Serializes this CheckEmailDuplicateRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckEmailDuplicateRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'CheckEmailDuplicateRequest(email: $email)';
  }
}

/// @nodoc
abstract mixin class $CheckEmailDuplicateRequestCopyWith<$Res> {
  factory $CheckEmailDuplicateRequestCopyWith(CheckEmailDuplicateRequest value,
          $Res Function(CheckEmailDuplicateRequest) _then) =
      _$CheckEmailDuplicateRequestCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$CheckEmailDuplicateRequestCopyWithImpl<$Res>
    implements $CheckEmailDuplicateRequestCopyWith<$Res> {
  _$CheckEmailDuplicateRequestCopyWithImpl(this._self, this._then);

  final CheckEmailDuplicateRequest _self;
  final $Res Function(CheckEmailDuplicateRequest) _then;

  /// Create a copy of CheckEmailDuplicateRequest
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
class _CheckEmailDuplicateRequest implements CheckEmailDuplicateRequest {
  const _CheckEmailDuplicateRequest({required this.email});
  factory _CheckEmailDuplicateRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckEmailDuplicateRequestFromJson(json);

  @override
  final String email;

  /// Create a copy of CheckEmailDuplicateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckEmailDuplicateRequestCopyWith<_CheckEmailDuplicateRequest>
      get copyWith => __$CheckEmailDuplicateRequestCopyWithImpl<
          _CheckEmailDuplicateRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CheckEmailDuplicateRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckEmailDuplicateRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'CheckEmailDuplicateRequest(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$CheckEmailDuplicateRequestCopyWith<$Res>
    implements $CheckEmailDuplicateRequestCopyWith<$Res> {
  factory _$CheckEmailDuplicateRequestCopyWith(
          _CheckEmailDuplicateRequest value,
          $Res Function(_CheckEmailDuplicateRequest) _then) =
      __$CheckEmailDuplicateRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$CheckEmailDuplicateRequestCopyWithImpl<$Res>
    implements _$CheckEmailDuplicateRequestCopyWith<$Res> {
  __$CheckEmailDuplicateRequestCopyWithImpl(this._self, this._then);

  final _CheckEmailDuplicateRequest _self;
  final $Res Function(_CheckEmailDuplicateRequest) _then;

  /// Create a copy of CheckEmailDuplicateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_CheckEmailDuplicateRequest(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
