import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/agreement_list_tile.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/check_button.dart';

import '../terms_agreement_ui.dart';

class ThirdAgreementRow extends StatelessWidget {
  const ThirdAgreementRow({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TermsAgreementUiBloc>();
    return AgreementListTile.expand(
        prefix: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child:
              BlocSelector<TermsAgreementUiBloc, TermsAgreementUiState, bool>(
            selector: (state) {
              return state.isThirdAgree;
            },
            builder: (context, isThirdAgree) {
              return GestureDetector(
                  onTap: () {
                    if (isThirdAgree) {
                      bloc.add(ThirdDisagreeButtonTap());
                    } else {
                      bloc.add(ThirdAgreeButtonTap());
                    }
                  },
                  child: CheckButton(select: isThirdAgree));
            },
          ),
        ),
        title: const Text(
          "[선택] 마케팅 목적의 개인정보 수집 및 이용 동의",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff8e8e8e),
          ),
        ));
  }
}
