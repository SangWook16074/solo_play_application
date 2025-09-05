import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_email_event.freezed.dart';

/// 이 클래스는 사용자 이메일 변경 관련 이벤트 선언 클래스입니다.
@freezed
sealed class UserEmailEvent with _$UserEmailEvent {
  /// 사용자 이메일 변경 이벤트
  const factory UserEmailEvent.changed({required String email}) =
      UserEmailChanged;

  /// 사용자 이메일 검증 요청 이벤트
  const factory UserEmailEvent.checkDuplicate({required String email}) =
      UserEmailCheckDuplicate;
}
