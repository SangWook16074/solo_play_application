import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/core/utils/typedefs/json_map.dart';

part 'jwt.freezed.dart';
part 'jwt.g.dart';

@freezed
abstract class Jwt with _$Jwt {
  const factory Jwt({
    required String grantType,
    required String accessToken,
    required String refreshToken,
  }) = _Jwt;

  factory Jwt.fromJson(JsonMap json) => _$JwtFromJson(json);
}
