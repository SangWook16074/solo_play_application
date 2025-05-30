import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/agreement_list_tile.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/check_button.dart';

import '../terms_agreement_ui.dart';

class FirstAgreementRow extends StatelessWidget {
  const FirstAgreementRow({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TermsAgreementUiBloc>();
    return AgreementListTile(
        prefix: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child:
              BlocSelector<TermsAgreementUiBloc, TermsAgreementUiState, bool>(
            selector: (state) {
              return state.isFirstAgree;
            },
            builder: (context, isFirstAgree) {
              return GestureDetector(
                  onTap: () {
                    if (isFirstAgree) {
                      bloc.add(FirstDisagreeButtonTap());
                    } else {
                      bloc.add(FirstAgreeButtonTap());
                    }
                  },
                  child: CheckButton(select: isFirstAgree));
            },
          ),
        ),
        title: const Text(
          "[필수] 만 14세 이상입니다",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff000000),
          ),
        ));
  }
}
