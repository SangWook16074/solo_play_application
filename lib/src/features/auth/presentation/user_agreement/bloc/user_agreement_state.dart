import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/user_agreement.dart';

part 'user_agreement_state.freezed.dart';

@freezed
abstract class UserAgreementState with _$UserAgreementState {
  const factory UserAgreementState({
    @Default(UserAgreement()) UserAgreement agreement,
  }) = _UserAgreement;
}
