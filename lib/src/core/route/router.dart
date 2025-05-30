import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/features/app/presentation/pages/app_page.dart';
import 'package:solo_play_application/src/features/course/presentation/view/add_view.dart';
import 'package:solo_play_application/src/features/home/presentation/view/home_ui.dart';
import 'package:solo_play_application/src/features/post/presentation/view/post_ui.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/detail_rank_ui.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/rank_ui.dart';
import 'package:solo_play_application/src/features/user/presentation/view/my_profile_ui.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellRouteKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    /// 앱 실행 시 첫 화면 : home화면
    ShellRoute(
      navigatorKey: _shellRouteKey,
      builder: (context, state, child) => AppPage(
        child: child,
      ),
      routes: [
        GoRoute(
          parentNavigatorKey: _shellRouteKey,
          path: '/',
          builder: (context, state) => const HomeUI(),
        ),
        GoRoute(
          parentNavigatorKey: _shellRouteKey,
          path: '/rank',
          builder: (context, state) => const RankUI(),
          routes: [
            GoRoute(
                path: 'detail',
                builder: (context, state) {
                  return const DetailRankUI();
                }),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _shellRouteKey,
          path: '/add',
          builder: (context, state) => const AddView(),
        ),
        GoRoute(
          parentNavigatorKey: _shellRouteKey,
          path: '/posts',
          builder: (context, state) => const PostUI(),
        ),
        GoRoute(
          parentNavigatorKey: _shellRouteKey,
          path: '/myprofiles',
          builder: (context, state) => const MyProfileUI(),
        ),
      ],
    ),

    /// 나의 포스팅 화면으로 전환

    /// 나의 코스 화면으로 전환
    // GoRoute(
    //   path: '/courseDetailView',
    //   builder: (context, state) => const CourseDetailView(),
    // ),

    /// rank ui에서 카드를 오른쪽으로 swipe하여 detail 화면으로 전환
  ],
);
