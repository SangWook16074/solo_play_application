import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/route/go_router_builder.dart';
import 'package:solo_play_application/src/presentation/app_page.dart';
import 'package:solo_play_application/src/presentation/course/view/course_detail_view.dart';
import 'package:solo_play_application/src/presentation/post/view/posting_detail_view.dart';
import 'package:solo_play_application/src/presentation/detail_rank_ui.dart';

final GoRouter router = GoRouter(
  routes: [
    /// 앱 실행 시 첫 화면 : home화면
    GoRoute(
      path: '/',
      builder: (context, state) => const AppPage(),
      routes: $appRoutes,
    ),

    /// 나의 포스팅 화면으로 전환
    GoRoute(
      path: '/postingDetailView',
      builder: (context, state) => const PostingDetailView(),
    ),

    /// 나의 코스 화면으로 전환
    GoRoute(
      path: '/courseDetailView',
      builder: (context, state) => const CourseDetailView(),
    ),

    /// rank ui에서 카드를 오른쪽으로 swipe하여 detail 화면으로 전환
    GoRoute(
        path: '/detailRankUI',
        builder: (context, state) {
          return const DetailRankUI();
        }),
  ],
);
