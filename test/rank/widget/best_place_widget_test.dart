// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:solo_play_application/src/presentation/course/widget/course_map_widget.dart';
// import 'package:solo_play_application/src/presentation/rank/widget/best_place_card.dart';

// void main() {
//   late Widget widget;

//   group("Best Place Widget Test", () {
//     setUpAll(() {
//       widget = const MaterialApp(
//         home: BestPlaceWidget(rank: 1),
//       );
//     });

//     testWidgets("랭킹에 있는 카드 위젯을 탭하면 상세 설명, 그 장소가 포함된 인기있는 코스 레이블 및 지도를 보여준다.",
//         (tester) async {
//       await tester.pumpWidget(widget);

//       final afterTouchedFinder =
//           find.byKey(const Key("After Touched Best Place Widget"));
//       expect(afterTouchedFinder, findsNothing);

//       await tester.tap(find.byType(BestPlaceWidget));
//       await tester.pumpAndSettle();

//       expect(find.textContaining("건축가의 탕비실이라는"), findsOneWidget);
//       expect(find.textContaining("3F LOBBY가 포함된"), findsOneWidget);
//       expect(find.byType(CourseMapWidget), findsWidgets);
//     });

//     testWidgets("카드 위젯의 북마크 아이콘을 누르면 아이콘 모양이 바뀐다", (tester) async {
//       await tester.pumpWidget(widget);

//       final bookmarkOutline = find.byIcon(Icons.bookmark_outline);
//       expect(bookmarkOutline, findsWidgets);

//       await tester.tap(bookmarkOutline);
//       await tester.pump();

//       expect(find.byIcon(Icons.bookmark), findsOneWidget);
//     });
//   });
// }
