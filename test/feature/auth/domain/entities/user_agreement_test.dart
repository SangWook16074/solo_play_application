import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/user_agreement.dart';

void main() {
  group(UserAgreement, () {
    test("should isUserAgree return true when isOver14 && isAgreedToTerms", () {
      final agreement = UserAgreement(
        isOver14: true,
        isAgreedToTerms: true,
      );

      expect(agreement.isUserAgree, true);
    });

    test(
        "should isUserAgree return true when isOver14 && isAgreedToTerms but isAgreedToMarketing && isConsentedAds false",
        () {
      final agreement = UserAgreement(
        isOver14: true,
        isAgreedToTerms: true,
        isAgreedToMarketing: false,
        isConsentedToAds: false,
      );

      expect(agreement.isUserAgree, true);
    });

    test("should isUserAgree return false when isOver14 false", () {
      final agreement = UserAgreement(
        isOver14: false,
      );

      expect(agreement.isUserAgree, false);
    });

    test("should isUserAgree return false when isAgreedToTerms false", () {
      final agreement = UserAgreement(isAgreedToTerms: false);

      expect(agreement.isUserAgree, false);
    });
  });
}
