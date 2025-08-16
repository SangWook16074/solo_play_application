import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/terms/terms_agreement_ui_bloc.dart';

import 'package:solo_play_application/src/features/auth/presentation/views/terms_agreement_ui.dart';

import 'terms_agreement_ui_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TermsAgreementUiBloc>()])
void main() {
  late TermsAgreementUiBloc bloc;
  late Widget widget;

  group("[TermsAgreementUI] UI테스트", () {
    setUp(() {
      bloc = MockTermsAgreementUiBloc() as TermsAgreementUiBloc;
      widget = MaterialApp(
        home: BlocProvider(
          create: (context) => bloc,
          child: const TermsAgreementUI(),
        ),
      );
    });

    // testWidgets("초기에 ", callback)
  });
}
