import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister/resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister/resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/all_agreement_row.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/first_agreement_row.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/fourth_agreement_row.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/second_agreement_row.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/third_agreement_row.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/next_button.dart';

import '../blocs/terms/terms_agreement.dart';

class TermsAgreementUI extends StatelessWidget {
  const TermsAgreementUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "솔플 이용 약관에",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "동의해 주세요",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            // const SizedBox(
            //   height: 37,
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: AllAgreementRow(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                height: 16,
                thickness: 1.0,
                color: Color(0xffeeeeee),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: FirstAgreementRow(),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SecondAgreementRow(),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ThirdAgreementRow(),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: FourthAgreementRow(),
            ),
            const SizedBox(
              height: 90,
            ),
            const Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  child: Text(
                    "정보추체의 개인정보 및 권리 보호를 위해 개인정보 보호법 및 관계법령이 정한 바를 준수하여 안전하게 관리하고 있습니다. 자세한 사항은 개인정보처리방침에서 확인할 수 있습니다.",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8E8E8E),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: BlocSelector<TermsAgreementUiBloc, TermsAgreementUiState,
                  bool>(
                selector: (state) {
                  return state.isAgree;
                },
                builder: (context, isAgree) {
                  return NextButton(
                    onTap: () {
                      if (isAgree) {
                        final state =
                            context.read<TermsAgreementUiBloc>().state;
                        final resisterUiBloc = context.read<ResisterUiBloc>();
                        resisterUiBloc.add(UserTermsChanged(
                            isOver14: state.isOver14,
                            isAgreedToMarketing: state.isAgreedToMarketing,
                            isAgreedToTerms: state.isAgreedToTerms,
                            isConsentedToAds: state.isConsentedToAds));
                        log("move to resister email ui");
                        resisterUiBloc.add(UserMoveToEmailResisterUI());
                        // context.push("/auth/");
                      }
                    },
                    label: "다음",
                    enabled: !isAgree,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
