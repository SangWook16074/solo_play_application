// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_email_duplicate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckEmailDuplicateRequestDto _$CheckEmailDuplicateRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _CheckEmailDuplicateRequestDto(
      email: json['email'] as String,
    );

Map<String, dynamic> _$CheckEmailDuplicateRequestDtoToJson(
        _CheckEmailDuplicateRequestDto instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_CheckEmailDuplicateResponseDto _$CheckEmailDuplicateResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _CheckEmailDuplicateResponseDto(
      result: json['result'] as String,
    );

Map<String, dynamic> _$CheckEmailDuplicateResponseDtoToJson(
        _CheckEmailDuplicateResponseDto instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
