import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:solo_play_application/src/core/data/models/course_model.dart';
import 'package:solo_play_application/src/core/widget/best_place_card_widget.dart';

class CourseRankView extends HookWidget {
  final CourseModel course;
  const CourseRankView({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 16.0, top: 4.0, bottom: 4.0),
          child: Text(
            "tip. 더 자세한 정보는 카드를 옆으로 넘겨보세요->",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff666666),
            ),
          ),
        ),
        Expanded(
          child: PageView.builder(
            padEnds: false,
            controller: controller,
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Align(
              alignment: Alignment.topCenter,
              child: BestPlaceCardWidget.expand(
                showHeader: true,
                rank: index + 1,
                isCourse: true,
                course: course,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
