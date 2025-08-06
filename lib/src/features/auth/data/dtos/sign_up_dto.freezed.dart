// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpDto {
  String get email;
  String get password;
  bool get isOver14;
  bool get isAgreedToTerms;
  bool get isAgreedToMarketing;
  bool get isConsentedToAds;

  /// Create a copy of SignUpDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpDtoCopyWith<SignUpDto> get copyWith =>
      _$SignUpDtoCopyWithImpl<SignUpDto>(this as SignUpDto, _$identity);

  /// Serializes this SignUpDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isOver14, isOver14) ||
                other.isOver14 == isOver14) &&
            (identical(other.isAgreedToTerms, isAgreedToTerms) ||
                other.isAgreedToTerms == isAgreedToTerms) &&
            (identical(other.isAgreedToMarketing, isAgreedToMarketing) ||
                other.isAgreedToMarketing == isAgreedToMarketing) &&
            (identical(other.isConsentedToAds, isConsentedToAds) ||
                other.isConsentedToAds == isConsentedToAds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, isOver14,
      isAgreedToTerms, isAgreedToMarketing, isConsentedToAds);

  @override
  String toString() {
    return 'SignUpDto(email: $email, password: $password, isOver14: $isOver14, isAgreedToTerms: $isAgreedToTerms, isAgreedToMarketing: $isAgreedToMarketing, isConsentedToAds: $isConsentedToAds)';
  }
}

/// @nodoc
abstract mixin class $SignUpDtoCopyWith<$Res> {
  factory $SignUpDtoCopyWith(SignUpDto value, $Res Function(SignUpDto) _then) =
      _$SignUpDtoCopyWithImpl;
  @useResult
  $Res call(
      {String email,
      String password,
      bool isOver14,
      bool isAgreedToTerms,
      bool isAgreedToMarketing,
      bool isConsentedToAds});
}

/// @nodoc
class _$SignUpDtoCopyWithImpl<$Res> implements $SignUpDtoCopyWith<$Res> {
  _$SignUpDtoCopyWithImpl(this._self, this._then);

  final SignUpDto _self;
  final $Res Function(SignUpDto) _then;

  /// Create a copy of SignUpDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isOver14 = null,
    Object? isAgreedToTerms = null,
    Object? isAgreedToMarketing = null,
    Object? isConsentedToAds = null,
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
      isOver14: null == isOver14
          ? _self.isOver14
          : isOver14 // ignore: cast_nullable_to_non_nullable
              as bool,
      isAgreedToTerms: null == isAgreedToTerms
          ? _self.isAgreedToTerms
          : isAgreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      isAgreedToMarketing: null == isAgreedToMarketing
          ? _self.isAgreedToMarketing
          : isAgreedToMarketing // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsentedToAds: null == isConsentedToAds
          ? _self.isConsentedToAds
          : isConsentedToAds // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SignUpDto implements SignUpDto {
  const _SignUpDto(
      {required this.email,
      required this.password,
      required this.isOver14,
      required this.isAgreedToTerms,
      required this.isAgreedToMarketing,
      required this.isConsentedToAds});
  factory _SignUpDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpDtoFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final bool isOver14;
  @override
  final bool isAgreedToTerms;
  @override
  final bool isAgreedToMarketing;
  @override
  final bool isConsentedToAds;

  /// Create a copy of SignUpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpDtoCopyWith<_SignUpDto> get copyWith =>
      __$SignUpDtoCopyWithImpl<_SignUpDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignUpDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isOver14, isOver14) ||
                other.isOver14 == isOver14) &&
            (identical(other.isAgreedToTerms, isAgreedToTerms) ||
                other.isAgreedToTerms == isAgreedToTerms) &&
            (identical(other.isAgreedToMarketing, isAgreedToMarketing) ||
                other.isAgreedToMarketing == isAgreedToMarketing) &&
            (identical(other.isConsentedToAds, isConsentedToAds) ||
                other.isConsentedToAds == isConsentedToAds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, isOver14,
      isAgreedToTerms, isAgreedToMarketing, isConsentedToAds);

  @override
  String toString() {
    return 'SignUpDto(email: $email, password: $password, isOver14: $isOver14, isAgreedToTerms: $isAgreedToTerms, isAgreedToMarketing: $isAgreedToMarketing, isConsentedToAds: $isConsentedToAds)';
  }
}

/// @nodoc
abstract mixin class _$SignUpDtoCopyWith<$Res>
    implements $SignUpDtoCopyWith<$Res> {
  factory _$SignUpDtoCopyWith(
          _SignUpDto value, $Res Function(_SignUpDto) _then) =
      __$SignUpDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      bool isOver14,
      bool isAgreedToTerms,
      bool isAgreedToMarketing,
      bool isConsentedToAds});
}

/// @nodoc
class __$SignUpDtoCopyWithImpl<$Res> implements _$SignUpDtoCopyWith<$Res> {
  __$SignUpDtoCopyWithImpl(this._self, this._then);

  final _SignUpDto _self;
  final $Res Function(_SignUpDto) _then;

  /// Create a copy of SignUpDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isOver14 = null,
    Object? isAgreedToTerms = null,
    Object? isAgreedToMarketing = null,
    Object? isConsentedToAds = null,
  }) {
    return _then(_SignUpDto(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isOver14: null == isOver14
          ? _self.isOver14
          : isOver14 // ignore: cast_nullable_to_non_nullable
              as bool,
      isAgreedToTerms: null == isAgreedToTerms
          ? _self.isAgreedToTerms
          : isAgreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      isAgreedToMarketing: null == isAgreedToMarketing
          ? _self.isAgreedToMarketing
          : isAgreedToMarketing // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsentedToAds: null == isConsentedToAds
          ? _self.isConsentedToAds
          : isConsentedToAds // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

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
