import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/data/models/course_model.dart';
import 'package:solo_play_application/src/core/widget/best_place_card_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/cubits/course_cubit.dart';

class BestPlaceCardPage extends StatelessWidget {
  final int rank;
  final CourseModel course;
  const BestPlaceCardPage(
      {super.key, required this.course, required this.rank});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CourseCubit(course),
      child: BestPlaceCardWidget.expand(
          rank: rank, showHeader: true, isCourse: false, course: course),
    );
  }
}
