import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/rank_courses_bloc.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/rank_courses_state.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/spot_rank_view.dart';

class RankCourseView extends StatelessWidget {
  const RankCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<RankCoursesBloc>().state;
    return switch (state) {
      InitState() => Scaffold(
          body: Center(
            child: Text("초기 상태"),
          ),
        ),
      LoadingState() => Scaffold(
          body: Center(child: CircularProgressIndicator()),
        ),
      LoadedState() => SpotRankView(
          courses: state.courses,
        ),
      ErrorState() => Scaffold(
          body: Center(
            child: Text("에러 상태"),
          ),
        ),
    };
  }
}
