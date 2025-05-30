import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/agreement_list_tile.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/check_button.dart';

import '../terms_agreement.dart';

class SecondAgreementRow extends StatelessWidget {
  const SecondAgreementRow({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TermsAgreementUiBloc>();
    return AgreementListTile.expand(
        prefix: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child:
              BlocSelector<TermsAgreementUiBloc, TermsAgreementUiState, bool>(
            selector: (state) {
              return state.isSecondAgree;
            },
            builder: (context, isSecondAgree) {
              return GestureDetector(
                  onTap: () {
                    if (isSecondAgree) {
                      bloc.add(SecondDisagreeButtonTap());
                    } else {
                      bloc.add(SecondAgreeButtonTap());
                    }
                  },
                  child: CheckButton(select: isSecondAgree));
            },
          ),
        ),
        title: const Text(
          "[필수] 이용 약관 동의",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),
          ),
        ));
  }
}
