// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpResponseDto {
  String get message;

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpResponseDtoCopyWith<SignUpResponseDto> get copyWith =>
      _$SignUpResponseDtoCopyWithImpl<SignUpResponseDto>(
          this as SignUpResponseDto, _$identity);

  /// Serializes this SignUpResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpResponseDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SignUpResponseDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class $SignUpResponseDtoCopyWith<$Res> {
  factory $SignUpResponseDtoCopyWith(
          SignUpResponseDto value, $Res Function(SignUpResponseDto) _then) =
      _$SignUpResponseDtoCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SignUpResponseDtoCopyWithImpl<$Res>
    implements $SignUpResponseDtoCopyWith<$Res> {
  _$SignUpResponseDtoCopyWithImpl(this._self, this._then);

  final SignUpResponseDto _self;
  final $Res Function(SignUpResponseDto) _then;

  /// Create a copy of SignUpResponseDto
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
class _SignUpResponseDto implements SignUpResponseDto {
  const _SignUpResponseDto({required this.message});
  factory _SignUpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseDtoFromJson(json);

  @override
  final String message;

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpResponseDtoCopyWith<_SignUpResponseDto> get copyWith =>
      __$SignUpResponseDtoCopyWithImpl<_SignUpResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignUpResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpResponseDto &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SignUpResponseDto(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SignUpResponseDtoCopyWith<$Res>
    implements $SignUpResponseDtoCopyWith<$Res> {
  factory _$SignUpResponseDtoCopyWith(
          _SignUpResponseDto value, $Res Function(_SignUpResponseDto) _then) =
      __$SignUpResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$SignUpResponseDtoCopyWithImpl<$Res>
    implements _$SignUpResponseDtoCopyWith<$Res> {
  __$SignUpResponseDtoCopyWithImpl(this._self, this._then);

  final _SignUpResponseDto _self;
  final $Res Function(_SignUpResponseDto) _then;

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_SignUpResponseDto(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
