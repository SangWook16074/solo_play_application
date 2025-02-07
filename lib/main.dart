import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/app/presentation/page/app_page.dart';
import 'package:solo_play_application/src/post/presentation/view/my_posting_view.dart';

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
      path: '/myPostingView',
      builder: (context, state) => const MyPostingView(),
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
