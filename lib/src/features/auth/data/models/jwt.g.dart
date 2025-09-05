// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Jwt _$JwtFromJson(Map<String, dynamic> json) => _Jwt(
      grantType: json['grantType'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$JwtToJson(_Jwt instance) => <String, dynamic>{
      'grantType': instance.grantType,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
