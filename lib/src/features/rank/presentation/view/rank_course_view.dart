import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/course_ranking_ui_bloc.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/courses_ranking_ui_state.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/place_ranking_view.dart';

class RankCourseView extends StatelessWidget {
  const RankCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CourseRankingUiBloc>().state;
    return switch (state) {
      InitState() => Scaffold(
          body: Center(
            child: Text("초기 상태"),
          ),
        ),
      LoadingState() => Scaffold(
          body: Center(child: CircularProgressIndicator()),
        ),
      LoadedState() => PlaceRankingView(),
      ErrorState() => Scaffold(
          body: Center(
            child: Text("에러 상태"),
          ),
        ),
    };
  }
}
