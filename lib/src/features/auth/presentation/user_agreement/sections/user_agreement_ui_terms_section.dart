import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/widgets/agreement_list_tile.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/widgets/check_button.dart';

class UserAgreementUiTermsSection extends StatelessWidget {
  final bool isAllAgree;
  final bool isOver14;
  final bool isAgreedToTerms;
  final bool isAgreedToMarketing;
  final bool isConsentedToAds;
  final void Function()? onIsAllagreeTap;
  final void Function()? onIsOver14Tap;
  final void Function()? onIsAgreedToTermsTap;
  final void Function()? onIsAgreedToMarketingTap;
  final void Function()? onisConsentedToAdsTap;
  const UserAgreementUiTermsSection(
      {super.key,
      this.isAllAgree = false,
      this.isOver14 = false,
      this.isAgreedToTerms = false,
      this.isAgreedToMarketing = false,
      this.isConsentedToAds = false,
      this.onIsAllagreeTap,
      this.onIsOver14Tap,
      this.onIsAgreedToTermsTap,
      this.onisConsentedToAdsTap,
      this.onIsAgreedToMarketingTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        AgreementListTile(
          key: Key('all-agreement-row'),
          prefix: CheckButton(
              onTap: onIsAllagreeTap,
              key: Key("all-agreement-check-button"),
              select: isAllAgree),
          title: "전체 동의하기 (선택 정보를 포함합니다.)",
          description: "선택사항에 대한 동의를 거부하는 경우에도 서비스는 이용이 가능합니다.",
        ),
        Divider(
          thickness: 1.0,
          color: Color(0xffEEEEEE),
        ),
        AgreementListTile(
          key: Key('is-over-14-row'),
          prefix: CheckButton(
              onTap: onIsOver14Tap,
              key: Key('is-over-14-check-button'),
              select: isOver14),
          title: "[필수] 만 14세 이상입니다",
        ),
        SizedBox(
          height: 12,
        ),
        AgreementListTile(
          key: Key('is-agree-to-terms-row'),
          prefix: CheckButton(
              onTap: onIsAgreedToTermsTap,
              key: Key('is-agree-to-terms-check-button'),
              select: isAgreedToTerms),
          title: "[필수] 이용 약관 동의",
        ),
        SizedBox(
          height: 12,
        ),
        AgreementListTile(
          key: Key('is-agree-to-marketing-row'),
          prefix: CheckButton(
              onTap: onIsAgreedToMarketingTap,
              key: Key('is-agree-to-marketing-check-button'),
              select: isAgreedToMarketing),
          title: "[선택] 마케팅 목적의 개인정보 수집 및 이용 동의",
          isOptional: true,
        ),
        SizedBox(
          height: 12,
        ),
        AgreementListTile(
          key: Key('is-consented-to-ads-row'),
          prefix: CheckButton(
              onTap: onisConsentedToAdsTap,
              key: Key('is-consented-to-ads-check-button'),
              select: isConsentedToAds),
          title: "[선택] 광고성 정보 수신 동의",
          isOptional: true,
        ),
      ],
    );
  }
}
