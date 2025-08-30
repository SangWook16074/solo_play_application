import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/sections/user_agreement_ui_terms_section.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/agreement_list_tile.dart';

void main() {
  group(UserAgreementUiTermsSection, () {
    late Widget widget;

    setUp(() {
      widget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: UserAgreementUiTermsSection(),
          ),
        ),
      );
    });

    testWidgets('should render 5 agreement list tile correctly',
        (tester) async {
      await tester.pumpWidget(widget);

      expect(find.byType(AgreementListTile), findsAtLeast(5));
    });

    testWidgets('should render divider correctly', (tester) async {
      await tester.pumpWidget(widget);

      final dividerFinder = find.byType(Divider);

      expect(dividerFinder, findsOneWidget);
      final divider = tester.widget<Divider>(dividerFinder);
      expect(divider.thickness, 1.0);
      expect(divider.color, Color(0xffEEEEEE));
    });

    testWidgets("should render all agreement list tile correctly",
        (tester) async {
      await tester.pumpWidget(widget);
      final tileFinder = find.byKey(Key('all-agreement-row'));
      expect(tileFinder, findsOneWidget);

      final tile = tester.widget<AgreementListTile>(tileFinder);

      expect(tile.title, "전체 동의하기 (선택 정보를 포함합니다.)");
      expect(tile.description, "선택사항에 대한 동의를 거부하는 경우에도 서비스는 이용이 가능합니다.");
      expect(find.byKey(Key("all-agreement-check-button")), findsOneWidget);
    });

    testWidgets("should render is over 14 list tile correctly", (tester) async {
      await tester.pumpWidget(widget);
      final tileFinder = find.byKey(Key('is-over-14-row'));
      expect(tileFinder, findsOneWidget);

      final tile = tester.widget<AgreementListTile>(tileFinder);

      expect(tile.title, "[필수] 만 14세 이상입니다");

      expect(find.byKey(Key("is-over-14-check-button")), findsOneWidget);
    });

    testWidgets("should render is agree to terms list tile correctly",
        (tester) async {
      await tester.pumpWidget(widget);
      final tileFinder = find.byKey(Key('is-agree-to-terms-row'));
      expect(tileFinder, findsOneWidget);

      final tile = tester.widget<AgreementListTile>(tileFinder);

      expect(tile.title, "[필수] 이용 약관 동의");

      expect(find.byKey(Key("is-agree-to-terms-check-button")), findsOneWidget);
    });

    testWidgets("should render is agree to marketing list tile correctly",
        (tester) async {
      await tester.pumpWidget(widget);
      final tileFinder = find.byKey(Key('is-agree-to-marketing-row'));
      expect(tileFinder, findsOneWidget);

      final tile = tester.widget<AgreementListTile>(tileFinder);

      expect(tile.title, "[선택] 마케팅 목적의 개인정보 수집 및 이용 동의");
      expect(tile.isOptional, true);

      expect(find.byKey(Key("is-agree-to-marketing-check-button")),
          findsOneWidget);
    });

    testWidgets("should render is concented to ads list tile correctly",
        (tester) async {
      await tester.pumpWidget(widget);
      final tileFinder = find.byKey(Key('is-concented-to-ads-row'));
      expect(tileFinder, findsOneWidget);

      final tile = tester.widget<AgreementListTile>(tileFinder);

      expect(tile.title, "[선택] 광고성 정보 수신 동의");
      expect(tile.isOptional, true);

      expect(
          find.byKey(Key("is-concented-to-ads-check-button")), findsOneWidget);
    });

    testWidgets("should render correctly", (tester) async {
      await tester.pumpWidget(widget);

      expectLater(
          find.byType(UserAgreementUiTermsSection),
          matchesGoldenFile(
              "goldens/user-agreement-ui-terms-section-default.png"));
    });
  });
}
