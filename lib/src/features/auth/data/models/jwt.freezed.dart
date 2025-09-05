// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Jwt {
  String get grantType;
  String get accessToken;
  String get refreshToken;

  /// Create a copy of Jwt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JwtCopyWith<Jwt> get copyWith =>
      _$JwtCopyWithImpl<Jwt>(this as Jwt, _$identity);

  /// Serializes this Jwt to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Jwt &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, grantType, accessToken, refreshToken);

  @override
  String toString() {
    return 'Jwt(grantType: $grantType, accessToken: $accessToken, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $JwtCopyWith<$Res> {
  factory $JwtCopyWith(Jwt value, $Res Function(Jwt) _then) = _$JwtCopyWithImpl;
  @useResult
  $Res call({String grantType, String accessToken, String refreshToken});
}

/// @nodoc
class _$JwtCopyWithImpl<$Res> implements $JwtCopyWith<$Res> {
  _$JwtCopyWithImpl(this._self, this._then);

  final Jwt _self;
  final $Res Function(Jwt) _then;

  /// Create a copy of Jwt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_self.copyWith(
      grantType: null == grantType
          ? _self.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
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
class _Jwt implements Jwt {
  const _Jwt(
      {required this.grantType,
      required this.accessToken,
      required this.refreshToken});
  factory _Jwt.fromJson(Map<String, dynamic> json) => _$JwtFromJson(json);

  @override
  final String grantType;
  @override
  final String accessToken;
  @override
  final String refreshToken;

  /// Create a copy of Jwt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JwtCopyWith<_Jwt> get copyWith =>
      __$JwtCopyWithImpl<_Jwt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JwtToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Jwt &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, grantType, accessToken, refreshToken);

  @override
  String toString() {
    return 'Jwt(grantType: $grantType, accessToken: $accessToken, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$JwtCopyWith<$Res> implements $JwtCopyWith<$Res> {
  factory _$JwtCopyWith(_Jwt value, $Res Function(_Jwt) _then) =
      __$JwtCopyWithImpl;
  @override
  @useResult
  $Res call({String grantType, String accessToken, String refreshToken});
}

/// @nodoc
class __$JwtCopyWithImpl<$Res> implements _$JwtCopyWith<$Res> {
  __$JwtCopyWithImpl(this._self, this._then);

  final _Jwt _self;
  final $Res Function(_Jwt) _then;

  /// Create a copy of Jwt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? grantType = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_Jwt(
      grantType: null == grantType
          ? _self.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
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
