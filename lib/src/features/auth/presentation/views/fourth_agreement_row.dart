import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/agreement_list_tile.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/check_button.dart';

import '../blocs/terms/terms_agreement.dart';

class FourthAgreementRow extends StatelessWidget {
  const FourthAgreementRow({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TermsAgreementUiBloc>();
    return AgreementListTile.expand(
        prefix: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child:
              BlocSelector<TermsAgreementUiBloc, TermsAgreementUiState, bool>(
            selector: (state) {
              return state.isConsentedToAds;
            },
            builder: (context, isFourthAgree) {
              return GestureDetector(
                  onTap: () {
                    if (isFourthAgree) {
                      bloc.add(FourthDisagreeButtonTap());
                    } else {
                      bloc.add(FourthAgreeButtonTap());
                    }
                  },
                  child: CheckButton(select: isFourthAgree));
            },
          ),
        ),
        title: const Text(
          "[선택] 광고성 정보 수신 동의",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff8e8e8e),
          ),
        ));
  }
}
