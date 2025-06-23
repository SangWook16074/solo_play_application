import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/data/models/course_model.dart';
import 'package:solo_play_application/src/features/rank/presentation/cubits/course_cubit.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/detail_rank_ui.dart';

class DetailRankUiPage extends StatelessWidget {
  final int rank;
  final CourseModel course;
  const DetailRankUiPage({super.key, required this.rank, required this.course});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CourseCubit(course),
      child: DetailRankUI(rank: rank, course: course),
    );
  }
}
