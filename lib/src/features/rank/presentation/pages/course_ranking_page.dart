import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/providers/rank/course_api_services_provider.dart';
import 'package:solo_play_application/src/core/providers/rank/course_repository_provider.dart';
import 'package:solo_play_application/src/features/rank/domain/repositories/course_repository.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/course_ranking_ui_bloc.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/courses_ranking_ui_event.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/rank_course_view.dart';

class CourseRankingPage extends StatelessWidget {
  const CourseRankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        courseApiServicesProvider,
        courseRepositoryProvider,
        BlocProvider(
            create: (context) => CourseRankingUiBloc(
                courseRepository: context.read<CourseRepository>())
              ..add(FetchInitialDatas()))
      ],
      child: RankCourseView(),
    );
  }
}
