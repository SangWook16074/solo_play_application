import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_info.freezed.dart';

@freezed
abstract class LoginInfo with _$LoginInfo {
  const factory LoginInfo({
    required String email,
    required String password,
  }) = _LoginInfo;

  const LoginInfo._();
}
