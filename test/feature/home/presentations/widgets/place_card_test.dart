import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/home/presentation/widgets/place_card.dart';

void main() {
  group(PlaceCard, () {
    late Widget widget;
    setUp(() {
      widget = MaterialApp(
        home: Scaffold(body: Center(child: PlaceCard())),
      );
    });
    testWidgets("should render place card correctly", (tester) async {
      await tester.pumpWidget(widget);

      final cardFinder = find.byKey(Key('place_thumbnail_container'));
      expect(cardFinder, findsOneWidget);

      /// card 섬네일 부분의 높이 고정값 131이 맞는지 검증
      final card = tester.widget<Container>(cardFinder);
      final cardSize = tester.getSize(cardFinder);
      expect(cardSize.height, 131);

      /// container의 border 위쪽 양옆 border가 10인지 검증
      expect(
          (card.decoration as BoxDecoration).borderRadius,
          BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ));

      /// card의 title, content, label text style 검증
      // title의 text 및 style 검증
      final titleFinder = find.text('도심 속 조용한 로스터리 카페');
      expect(titleFinder, findsOneWidget);
      final titleText = tester.widget<Text>(titleFinder);
      final titleStyle = titleText.style!;
      expect(titleStyle.fontSize, 14);
      expect(titleStyle.fontWeight, FontWeight.w700);
      expect(titleStyle.fontStyle, FontStyle.normal);

      // content의 text 및 style 검증
      final contentFinder = find.text('머큐리에스프레소바');
      expect(contentFinder, findsOneWidget);
      final contentText = tester.widget<Text>(contentFinder);
      final contetnStyle = contentText.style!;
      expect(contetnStyle.fontSize, 12);
      expect(contetnStyle.fontWeight, FontWeight.w400);
      expect(contetnStyle.fontStyle, FontStyle.normal);

      // label(용산구) text의 style 검증 / text를 감싸고 있는 container의 고정된 size, color, border 검증
      final labelFinder = find.text('용산구');
      expect(labelFinder, findsOneWidget);
      final labelText = tester.widget<Text>(labelFinder);
      final labelStyle = labelText.style!;
      expect(labelStyle.fontSize, 10);
      expect(labelStyle.fontWeight, FontWeight.w400);
      expect(labelStyle.fontStyle, FontStyle.normal);
      expect(labelStyle.color, const Color(0xffFFFFFF));

      final labelContainerFinder =
          find.ancestor(of: labelFinder, matching: find.byType(Container));
      expect(labelContainerFinder, findsOneWidget);
      final labelSize = tester.getSize(labelContainerFinder);
      expect(labelSize.height, 20);
      expect(labelSize.width, 42);
      final labelContainer = tester.widget<Container>(labelContainerFinder);
      final labelDecoration = labelContainer.decoration as BoxDecoration;
      expect(labelDecoration.color, const Color(0xff0070F0));
      expect(labelDecoration.borderRadius, BorderRadius.circular(10));

      // 태그 텍스트 존재 확인
      expect(find.text('#커피향 가득'), findsOneWidget);
      expect(find.text('#스웨덴커피'), findsOneWidget);
    });
  });
}
