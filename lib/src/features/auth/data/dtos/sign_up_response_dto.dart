import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response_dto.freezed.dart';
part 'sign_up_response_dto.g.dart';

@freezed
abstract class SignUpResponseDto with _$SignUpResponseDto {
  const factory SignUpResponseDto({
    required String message,
  }) = _SignUpResponseDto;

  factory SignUpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseDtoFromJson(json);
}
