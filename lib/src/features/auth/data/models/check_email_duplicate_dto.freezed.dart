// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_email_duplicate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckEmailDuplicateRequestDto {
  String get email;

  /// Create a copy of CheckEmailDuplicateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckEmailDuplicateRequestDtoCopyWith<CheckEmailDuplicateRequestDto>
      get copyWith => _$CheckEmailDuplicateRequestDtoCopyWithImpl<
              CheckEmailDuplicateRequestDto>(
          this as CheckEmailDuplicateRequestDto, _$identity);

  /// Serializes this CheckEmailDuplicateRequestDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckEmailDuplicateRequestDto &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'CheckEmailDuplicateRequestDto(email: $email)';
  }
}

/// @nodoc
abstract mixin class $CheckEmailDuplicateRequestDtoCopyWith<$Res> {
  factory $CheckEmailDuplicateRequestDtoCopyWith(
          CheckEmailDuplicateRequestDto value,
          $Res Function(CheckEmailDuplicateRequestDto) _then) =
      _$CheckEmailDuplicateRequestDtoCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$CheckEmailDuplicateRequestDtoCopyWithImpl<$Res>
    implements $CheckEmailDuplicateRequestDtoCopyWith<$Res> {
  _$CheckEmailDuplicateRequestDtoCopyWithImpl(this._self, this._then);

  final CheckEmailDuplicateRequestDto _self;
  final $Res Function(CheckEmailDuplicateRequestDto) _then;

  /// Create a copy of CheckEmailDuplicateRequestDto
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
class _CheckEmailDuplicateRequestDto implements CheckEmailDuplicateRequestDto {
  const _CheckEmailDuplicateRequestDto({required this.email});
  factory _CheckEmailDuplicateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CheckEmailDuplicateRequestDtoFromJson(json);

  @override
  final String email;

  /// Create a copy of CheckEmailDuplicateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckEmailDuplicateRequestDtoCopyWith<_CheckEmailDuplicateRequestDto>
      get copyWith => __$CheckEmailDuplicateRequestDtoCopyWithImpl<
          _CheckEmailDuplicateRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CheckEmailDuplicateRequestDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckEmailDuplicateRequestDto &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'CheckEmailDuplicateRequestDto(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$CheckEmailDuplicateRequestDtoCopyWith<$Res>
    implements $CheckEmailDuplicateRequestDtoCopyWith<$Res> {
  factory _$CheckEmailDuplicateRequestDtoCopyWith(
          _CheckEmailDuplicateRequestDto value,
          $Res Function(_CheckEmailDuplicateRequestDto) _then) =
      __$CheckEmailDuplicateRequestDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$CheckEmailDuplicateRequestDtoCopyWithImpl<$Res>
    implements _$CheckEmailDuplicateRequestDtoCopyWith<$Res> {
  __$CheckEmailDuplicateRequestDtoCopyWithImpl(this._self, this._then);

  final _CheckEmailDuplicateRequestDto _self;
  final $Res Function(_CheckEmailDuplicateRequestDto) _then;

  /// Create a copy of CheckEmailDuplicateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_CheckEmailDuplicateRequestDto(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$CheckEmailDuplicateResponseDto {
  String get result;

  /// Create a copy of CheckEmailDuplicateResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckEmailDuplicateResponseDtoCopyWith<CheckEmailDuplicateResponseDto>
      get copyWith => _$CheckEmailDuplicateResponseDtoCopyWithImpl<
              CheckEmailDuplicateResponseDto>(
          this as CheckEmailDuplicateResponseDto, _$identity);

  /// Serializes this CheckEmailDuplicateResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckEmailDuplicateResponseDto &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @override
  String toString() {
    return 'CheckEmailDuplicateResponseDto(result: $result)';
  }
}

/// @nodoc
abstract mixin class $CheckEmailDuplicateResponseDtoCopyWith<$Res> {
  factory $CheckEmailDuplicateResponseDtoCopyWith(
          CheckEmailDuplicateResponseDto value,
          $Res Function(CheckEmailDuplicateResponseDto) _then) =
      _$CheckEmailDuplicateResponseDtoCopyWithImpl;
  @useResult
  $Res call({String result});
}

/// @nodoc
class _$CheckEmailDuplicateResponseDtoCopyWithImpl<$Res>
    implements $CheckEmailDuplicateResponseDtoCopyWith<$Res> {
  _$CheckEmailDuplicateResponseDtoCopyWithImpl(this._self, this._then);

  final CheckEmailDuplicateResponseDto _self;
  final $Res Function(CheckEmailDuplicateResponseDto) _then;

  /// Create a copy of CheckEmailDuplicateResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_self.copyWith(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CheckEmailDuplicateResponseDto
    implements CheckEmailDuplicateResponseDto {
  const _CheckEmailDuplicateResponseDto({required this.result});
  factory _CheckEmailDuplicateResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CheckEmailDuplicateResponseDtoFromJson(json);

  @override
  final String result;

  /// Create a copy of CheckEmailDuplicateResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckEmailDuplicateResponseDtoCopyWith<_CheckEmailDuplicateResponseDto>
      get copyWith => __$CheckEmailDuplicateResponseDtoCopyWithImpl<
          _CheckEmailDuplicateResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CheckEmailDuplicateResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckEmailDuplicateResponseDto &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @override
  String toString() {
    return 'CheckEmailDuplicateResponseDto(result: $result)';
  }
}

/// @nodoc
abstract mixin class _$CheckEmailDuplicateResponseDtoCopyWith<$Res>
    implements $CheckEmailDuplicateResponseDtoCopyWith<$Res> {
  factory _$CheckEmailDuplicateResponseDtoCopyWith(
          _CheckEmailDuplicateResponseDto value,
          $Res Function(_CheckEmailDuplicateResponseDto) _then) =
      __$CheckEmailDuplicateResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$CheckEmailDuplicateResponseDtoCopyWithImpl<$Res>
    implements _$CheckEmailDuplicateResponseDtoCopyWith<$Res> {
  __$CheckEmailDuplicateResponseDtoCopyWithImpl(this._self, this._then);

  final _CheckEmailDuplicateResponseDto _self;
  final $Res Function(_CheckEmailDuplicateResponseDto) _then;

  /// Create a copy of CheckEmailDuplicateResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(_CheckEmailDuplicateResponseDto(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
