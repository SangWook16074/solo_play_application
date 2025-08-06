import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/terms/terms_agreement_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/terms/terms_agreement_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/terms/terms_agreement_ui_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/agreement_list_tile.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/check_button.dart';

class AllAgreementRow extends StatelessWidget {
  const AllAgreementRow({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TermsAgreementUiBloc>();
    return AgreementListTile(
      prefix: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: BlocSelector<TermsAgreementUiBloc, TermsAgreementUiState, bool>(
          selector: (state) {
            return state.isAllAgreement;
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                if (state) {
                  bloc.add(AllDisagreeButtonTap());
                } else {
                  bloc.add(AllAgreeButtonTap());
                }
              },
              child: CheckButton(
                select: state,
              ),
            );
          },
        ),
      ),
      title: const Text(
        "전체 동의하기 (선택 정보를 포함합니다.)",
        style: TextStyle(
          color: Color(0xff000000),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      description: const Text(
        "선택사항에 대한 동의를 거부하는 경우에도\n서비스는 이용이 가능합니다.",
        style: TextStyle(
          color: Color(0xff8e8e8e),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
