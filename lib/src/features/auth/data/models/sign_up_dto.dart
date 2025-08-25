import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_dto.freezed.dart';
part 'sign_up_dto.g.dart';

@freezed
abstract class SignUpDto with _$SignUpDto {
  const factory SignUpDto({
    required String email,
    required String password,
    required bool isOver14,
    required bool isAgreedToTerms,
    required bool isAgreedToMarketing,
    required bool isConsentedToAds,
  }) = _SignUpDto;

  factory SignUpDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpDtoFromJson(json);
}

@freezed
abstract class SignUpResponseDto with _$SignUpResponseDto {
  const factory SignUpResponseDto({
    required String message,
  }) = _SignUpResponseDto;

  factory SignUpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseDtoFromJson(json);
}
