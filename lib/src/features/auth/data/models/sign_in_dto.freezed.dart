// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInDto {
  String get email;
  String get password;

  /// Create a copy of SignInDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInDtoCopyWith<SignInDto> get copyWith =>
      _$SignInDtoCopyWithImpl<SignInDto>(this as SignInDto, _$identity);

  /// Serializes this SignInDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'SignInDto(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $SignInDtoCopyWith<$Res> {
  factory $SignInDtoCopyWith(SignInDto value, $Res Function(SignInDto) _then) =
      _$SignInDtoCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInDtoCopyWithImpl<$Res> implements $SignInDtoCopyWith<$Res> {
  _$SignInDtoCopyWithImpl(this._self, this._then);

  final SignInDto _self;
  final $Res Function(SignInDto) _then;

  /// Create a copy of SignInDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SignInDto implements SignInDto {
  const _SignInDto({required this.email, required this.password});
  factory _SignInDto.fromJson(Map<String, dynamic> json) =>
      _$SignInDtoFromJson(json);

  @override
  final String email;
  @override
  final String password;

  /// Create a copy of SignInDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignInDtoCopyWith<_SignInDto> get copyWith =>
      __$SignInDtoCopyWithImpl<_SignInDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignInDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'SignInDto(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$SignInDtoCopyWith<$Res>
    implements $SignInDtoCopyWith<$Res> {
  factory _$SignInDtoCopyWith(
          _SignInDto value, $Res Function(_SignInDto) _then) =
      __$SignInDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$SignInDtoCopyWithImpl<$Res> implements _$SignInDtoCopyWith<$Res> {
  __$SignInDtoCopyWithImpl(this._self, this._then);

  final _SignInDto _self;
  final $Res Function(_SignInDto) _then;

  /// Create a copy of SignInDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_SignInDto(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SignInResponseDto {
  String get accessToken;
  String get refreshToken;

  /// Create a copy of SignInResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInResponseDtoCopyWith<SignInResponseDto> get copyWith =>
      _$SignInResponseDtoCopyWithImpl<SignInResponseDto>(
          this as SignInResponseDto, _$identity);

  /// Serializes this SignInResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInResponseDto &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @override
  String toString() {
    return 'SignInResponseDto(accessToken: $accessToken, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $SignInResponseDtoCopyWith<$Res> {
  factory $SignInResponseDtoCopyWith(
          SignInResponseDto value, $Res Function(SignInResponseDto) _then) =
      _$SignInResponseDtoCopyWithImpl;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$SignInResponseDtoCopyWithImpl<$Res>
    implements $SignInResponseDtoCopyWith<$Res> {
  _$SignInResponseDtoCopyWithImpl(this._self, this._then);

  final SignInResponseDto _self;
  final $Res Function(SignInResponseDto) _then;

  /// Create a copy of SignInResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_self.copyWith(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SignInResponseDto implements SignInResponseDto {
  const _SignInResponseDto(
      {required this.accessToken, required this.refreshToken});
  factory _SignInResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDtoFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  /// Create a copy of SignInResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignInResponseDtoCopyWith<_SignInResponseDto> get copyWith =>
      __$SignInResponseDtoCopyWithImpl<_SignInResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignInResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInResponseDto &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @override
  String toString() {
    return 'SignInResponseDto(accessToken: $accessToken, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$SignInResponseDtoCopyWith<$Res>
    implements $SignInResponseDtoCopyWith<$Res> {
  factory _$SignInResponseDtoCopyWith(
          _SignInResponseDto value, $Res Function(_SignInResponseDto) _then) =
      __$SignInResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$SignInResponseDtoCopyWithImpl<$Res>
    implements _$SignInResponseDtoCopyWith<$Res> {
  __$SignInResponseDtoCopyWithImpl(this._self, this._then);

  final _SignInResponseDto _self;
  final $Res Function(_SignInResponseDto) _then;

  /// Create a copy of SignInResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_SignInResponseDto(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
