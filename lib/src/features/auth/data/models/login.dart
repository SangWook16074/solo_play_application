import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/core/utils/typedefs/json_map.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
abstract class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(JsonMap json) => _$LoginRequestFromJson(json);
}
