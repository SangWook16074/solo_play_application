import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/data/models/course_model.dart';
import 'package:solo_play_application/src/features/app/presentation/pages/app_page.dart';
import 'package:solo_play_application/src/features/course/presentation/view/add_view.dart';
import 'package:solo_play_application/src/features/home/presentation/view/home_ui.dart';
import 'package:solo_play_application/src/features/post/presentation/view/post_ui.dart';
import 'package:solo_play_application/src/features/rank/presentation/pages/detail_rank_ui_page.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/detail_course_ui.dart';
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
          builder: (context, state) {
            final extra = state.extra as CourseModel?;
            if (extra == null) {
              return const Scaffold(
                body: Center(
                  child: Text('course 정보가 없습니다.'),
                ),
              );
            }
            return RankUI(extra);
          },
          routes: [
            GoRoute(
                path: 'detailPlace',
                builder: (context, state) {
                  final arguments = state.extra as Map<String, dynamic>;
                  final rank = arguments['rank'] as int;
                  final course = arguments['course'] as CourseModel;
                  if (rank is! int || course is! CourseModel) {
                    return const Scaffold(
                      body: Center(
                        child: Text('잘못된 접근입니다.'),
                      ),
                    );
                  }
                  return DetailRankUiPage(
                    rank: rank,
                    course: course,
                  );
                }),
            GoRoute(
                path: 'detailCourse',
                builder: (context, state) {
                  final arguments = state.extra as Map<String, dynamic>;
                  final rank = arguments['rank'] as int;
                  final course = arguments['course'] as CourseModel;
                  if (rank is! int || course is! CourseModel) {
                    return const Scaffold(
                      body: Center(
                        child: Text('잘못된 접근입니다.'),
                      ),
                    );
                  }

                  return DetailCourseUI(
                    rank: rank,
                    course: course,
                  );
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
  ],
);
