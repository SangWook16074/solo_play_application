import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/features/app/presentation/pages/app_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister_ui_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/email_resister_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/login_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/password_resister_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/resister_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/pages/terms_agreement_page.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/email_resister_ui.dart';
import 'package:solo_play_application/src/features/auth/presentation/views/login_ui.dart';
import 'package:solo_play_application/src/features/course/presentation/view/course_detail_view.dart';
import 'package:solo_play_application/src/features/post/presentation/view/posting_detail_view.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/detail_rank_ui.dart';

final GoRouter router = GoRouter(
  routes: [
    /// 앱 실행 시 첫 화면 : home화면
    ///
    ///
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const AppPage(),
    //   // routes: $appRoutes,
    // ),

    GoRoute(path: '/', builder: (context, state) => const LoginPage(), routes: [
      ShellRoute(
          builder: (context, state, child) => BlocProvider(
                create: (context) => ResisterUiBloc(),
                child: child,
              ),
          routes: [
            GoRoute(
              path: "/signup/terms",
              builder: (context, state) => const TermsAgreementPage(),
            ),
            GoRoute(
              path: "/signup/email",
              builder: (context, state) => const EmailResisterPage(),
            ),
            GoRoute(
              path: "/signup/password",
              builder: (context, state) => const PasswordResisterPage(),
            ),
          ]),
    ]
        // routes: $appRoutes,
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
