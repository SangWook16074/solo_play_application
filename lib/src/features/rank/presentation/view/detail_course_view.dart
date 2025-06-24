import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/rank/data/models/course_model.dart';
import 'package:solo_play_application/src/core/widget/best_place_card_widget.dart';

class DetailCourseView extends StatefulWidget {
  final int rank;
  final CourseModel course;
  const DetailCourseView({super.key, required this.rank, required this.course});

  @override
  State<DetailCourseView> createState() => _DetailCourseViewState();
}

class _DetailCourseViewState extends State<DetailCourseView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BestPlaceCardWidget(
          rank: widget.rank,
          showHeader: false,
          isCourse: true,
          course: widget.course,
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            width: 356,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color(0xff0070f0),
            ),
          ),
        ),
        const SizedBox(height: 120),
      ],
    );
  }
}
