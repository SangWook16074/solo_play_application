import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/auth_event.dart';

part 'sign_in_response_dto.freezed.dart';
part 'sign_in_response_dto.g.dart';

@freezed
abstract class SignInResponseDto with _$SignInResponseDto {
  const factory SignInResponseDto({
    required String accessToken,
    required String refreshToken,
  }) = _SignInResponseDto;

  factory SignInResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDtoFromJson(json);
}
