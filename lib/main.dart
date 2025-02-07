import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/app/presentation/page/app_page.dart';
import 'package:solo_play_application/src/course/presentation/view/course_detail_view.dart';
import 'package:solo_play_application/src/post/presentation/view/posting_detail_view.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    /// 앱 실행 시 첫 화면 : home화면
    GoRoute(
      path: '/',
      builder: (context, state) => const AppPage(),
    ),
    GoRoute(
      path: '/postingDetailView',
      builder: (context, state) => const PostingDetailView(),
    ),
    GoRoute(
      path: '/courseDetailView',
      builder: (context, state) => const CourseDetailView(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
