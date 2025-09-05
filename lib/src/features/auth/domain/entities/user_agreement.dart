import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_agreement.freezed.dart';

@freezed
abstract class UserAgreement with _$UserAgreement {
  const factory UserAgreement({
    @Default(false) bool isOver14,
    @Default(false) bool isAgreedToTerms,
    @Default(false) bool isAgreedToMarketing,
    @Default(false) bool isConsentedToAds,
  }) = _UserAgreement;

  const UserAgreement._();

  bool get isUserAgree {
    return isOver14 && isAgreedToTerms;
  }

  bool get isAllAgree {
    return isUserAgree && isAgreedToMarketing && isConsentedToAds;
  }
}
