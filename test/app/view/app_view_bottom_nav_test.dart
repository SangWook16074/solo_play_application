// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:solo_play_application/src/features/app/presentation/pages/app_page.dart';

// void main() {
//   group("App View Bottom Nav UI Test", () {
//     late Widget widget;

//     setUp(() {
//       widget = const MaterialApp(
//         home: AppPage(child: child,),
//       );
//     });

//     testWidgets("사용자는 초기에 Home View에 위치한다.", (tester) async {
//       await tester.pumpWidget(widget);
//       expect(find.byKey(const Key("app-view-home-page")), findsOneWidget);
//       expect(find.byKey(const Key("app-view-rank-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-add-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-post-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-my-page")), findsNothing);
//     });

//     testWidgets("사용자는 Rank 탭을 탭하면 Rank View에 위치한다.", (tester) async {
//       await tester.pumpWidget(widget);
//       await tester.tap(find.byKey(const Key("app-view-bottom-nav-rank")));
//       await tester.pumpAndSettle();
//       expect(find.byKey(const Key("app-view-home-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-rank-page")), findsOneWidget);
//       expect(find.byKey(const Key("app-view-add-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-post-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-my-page")), findsNothing);
//     });

//     testWidgets("사용자는 Add 탭을 탭하면 Add View에 위치한다.", (tester) async {
//       await tester.pumpWidget(widget);
//       await tester.tap(find.byKey(const Key("app-view-bottom-nav-add")));
//       await tester.pumpAndSettle();
//       expect(find.byKey(const Key("app-view-home-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-rank-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-add-page")), findsOneWidget);
//       expect(find.byKey(const Key("app-view-post-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-my-page")), findsNothing);
//     });

//     testWidgets("사용자는 Post 탭을 탭하면 Post View에 위치한다.", (tester) async {
//       await tester.pumpWidget(widget);
//       await tester.tap(find.byKey(const Key("app-view-bottom-nav-post")));
//       await tester.pumpAndSettle();
//       expect(find.byKey(const Key("app-view-home-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-rank-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-add-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-post-page")), findsOneWidget);
//       expect(find.byKey(const Key("app-view-my-page")), findsNothing);
//     });

//     testWidgets("사용자는 Mypage 탭을 탭하면 Mypage View에 위치한다.", (tester) async {
//       await tester.pumpWidget(widget);
//       await tester.tap(find.byKey(const Key("app-view-bottom-nav-mypage")));
//       await tester.pumpAndSettle();
//       expect(find.byKey(const Key("app-view-home-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-rank-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-add-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-post-page")), findsNothing);
//       expect(find.byKey(const Key("app-view-my-page")), findsOneWidget);
//     });
//   });
// }
