// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpDto _$SignUpDtoFromJson(Map<String, dynamic> json) => _SignUpDto(
      email: json['email'] as String,
      password: json['password'] as String,
      isOver14: json['isOver14'] as bool,
      isAgreedToTerms: json['isAgreedToTerms'] as bool,
      isAgreedToMarketing: json['isAgreedToMarketing'] as bool,
      isConsentedToAds: json['isConsentedToAds'] as bool,
    );

Map<String, dynamic> _$SignUpDtoToJson(_SignUpDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'isOver14': instance.isOver14,
      'isAgreedToTerms': instance.isAgreedToTerms,
      'isAgreedToMarketing': instance.isAgreedToMarketing,
      'isConsentedToAds': instance.isConsentedToAds,
    };
