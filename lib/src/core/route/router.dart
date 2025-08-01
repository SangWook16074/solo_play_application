import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/auth_state.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/email_resister_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/login_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/password_resister_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/terms_agreement_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/resister_flow_view.dart';
import 'package:solo_play_application/src/features/rank/data/models/course_model.dart';
import 'package:solo_play_application/src/features/app/presentation/pages/app_page.dart';
import 'package:solo_play_application/src/features/post/presentation/view/post_ui.dart';
import 'package:solo_play_application/src/features/rank/data/models/place_model.dart';
import 'package:solo_play_application/src/features/rank/presentation/pages/detail_place_ui_page.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/detail_course_ui.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/detail_place_review_ui.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/rank_ui.dart';
import 'package:solo_play_application/src/features/user/presentation/view/my_profile_ui.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellRouteKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) {
        final state = context.watch<AuthBloc>().state;

        switch (state) {
          case Authenticate():
            return "/home";
          case UnAuthenticate():
            return "/auth";
          case Loading():
            return "/loading";
        }
      },
    ),

    GoRoute(
        path: '/auth',
        builder: (context, state) => const LoginPage(),
        routes: [
          ShellRoute(
            builder: (context, state, child) {
              return ResisterFlowView(child: child);
            },
            routes: [
              GoRoute(
                path: '/signup/terms',
                builder: (context, state) => const TermsAgreementPage(),
              ),
              GoRoute(
                path: '/signup/email',
                builder: (context, state) => const EmailResisterPage(),
              ),
              GoRoute(
                path: '/signup/password',
                builder: (context, state) => const PasswordResisterPage(),
              ),
            ],
          ),
        ]),

    /// 앱 실행 시 첫 화면 : home화면
    ShellRoute(
      navigatorKey: _shellRouteKey,
      builder: (context, state, child) => AppPage(child: child),
      routes: [
        GoRoute(
          parentNavigatorKey: _shellRouteKey,
          path: '/home',
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: Container(),
            transitionDuration: Duration.zero,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          ),
        ),
        GoRoute(
          parentNavigatorKey: _shellRouteKey,
          path: '/rank',
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const RankUI(),
            transitionDuration: Duration.zero,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          ),
          routes: [
            GoRoute(
              path: 'detailPlace',
              builder: (context, state) {
                final arguments = state.extra as Map<String, dynamic>;
                final rank = arguments['rank'] as int;
                final place = arguments['place'] as PlaceModel;
                if (rank is! int || place is! PlaceModel) {
                  return const Scaffold(
                    body: Center(
                      child: Text('잘못된 접근입니다.'),
                    ),
                  );
                }
                return DetailPlaceUiPage(
                  rank: rank,
                  place: place,
                );
              },
              routes: [
                GoRoute(
                  path: 'detailReview',
                  builder: (context, state) => DetailPlaceReviewUI(),
                ),
              ],
            ),
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
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: Container(),
            transitionDuration: Duration.zero,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          ),
        ),
        GoRoute(
          parentNavigatorKey: _shellRouteKey,
          path: '/posts',
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const PostUI(),
            transitionDuration: Duration.zero,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          ),
          // builder: (context, state) => const PostUI(),
        ),
        GoRoute(
          parentNavigatorKey: _shellRouteKey,
          path: '/myprofiles',
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const MyProfileUI(),
            transitionDuration: Duration.zero,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
                child: child,
              );
            },
          ),
          // builder: (context, state) => const MyProfileUI(),
        ),
      ],
    ),
  ],
);
