import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_email_duplicate_dto.freezed.dart';
part 'check_email_duplicate_dto.g.dart';

@freezed
abstract class CheckEmailDuplicateRequestDto
    with _$CheckEmailDuplicateRequestDto {
  const factory CheckEmailDuplicateRequestDto({
    required String email,
  }) = _CheckEmailDuplicateRequestDto;

  factory CheckEmailDuplicateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CheckEmailDuplicateRequestDtoFromJson(json);
}

@freezed
abstract class CheckEmailDuplicateResponseDto
    with _$CheckEmailDuplicateResponseDto {
  const factory CheckEmailDuplicateResponseDto({required String result}) =
      _CheckEmailDuplicateResponseDto;

  factory CheckEmailDuplicateResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CheckEmailDuplicateResponseDtoFromJson(json);
}
