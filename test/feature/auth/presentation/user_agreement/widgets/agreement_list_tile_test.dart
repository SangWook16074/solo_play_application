import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/widgets/agreement_list_tile.dart';

void main() {
  group(AgreementListTile, () {
    final title = '이용약관 동의';
    final description = '필수 동의 항목입니다.';

    testWidgets('should renders title and description correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Center(
            child: AgreementListTile(
              prefix: const Icon(Icons.check_box_outline_blank),
              title: title,
              description: description,
              showDetails: true,
            ),
          ),
        ),
      ));

      // title 확인

      expect(find.byKey(const Key('agreement-title')), findsOneWidget);
      expect(find.byKey(const Key('agreement-description')), findsOneWidget);
      expect(find.byKey(const Key('agreement-details')), findsOneWidget);

      expect(find.text('이용약관 동의'), findsOneWidget);
      expect(find.text('필수 동의 항목입니다.'), findsOneWidget);
      expect(find.text('자세히'), findsOneWidget);

      expectLater(
          find.byType(AgreementListTile),
          matchesGoldenFile(
              "goldens/agreement-list-title-with-description.png"));
    });

    testWidgets('should renders without description and details',
        (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Center(
            child: AgreementListTile(
              prefix: const Icon(Icons.check_box_outline_blank),
              title: '선택 동의',
            ),
          ),
        ),
      ));

      expect(find.text('선택 동의'), findsOneWidget);
      expect(find.byKey(const Key('agreement-description')), findsNothing);
      expect(find.byKey(const Key('agreement-details')), findsNothing);

      expectLater(
          find.byType(AgreementListTile),
          matchesGoldenFile(
              "goldens/agreement-list-title-without-description.png"));
    });

    testWidgets('should renders suffix widget if provided', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Center(
            child: AgreementListTile(
              prefix: const Icon(Icons.check_box_outline_blank),
              title: '약관',
              suffix: const Icon(Icons.info_outline),
            ),
          ),
        ),
      ));

      expect(find.byIcon(Icons.info_outline), findsOneWidget);
      expectLater(find.byType(AgreementListTile),
          matchesGoldenFile("goldens/agreement-list-title-with-suffix.png"));
    });
  });
}
