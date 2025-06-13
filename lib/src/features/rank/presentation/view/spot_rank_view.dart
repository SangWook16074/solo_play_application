import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/data/models/course_model.dart';
import 'package:solo_play_application/src/core/widget/best_place_card_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/pages/best_place_card_page.dart';

class SpotRankView extends StatefulWidget {
  final List<CourseModel> courses;
  const SpotRankView({super.key, required this.courses});

  @override
  State<SpotRankView> createState() => _SpotRankViewState();
}

class _SpotRankViewState extends State<SpotRankView> {
  late final PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0, viewportFraction: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              controller: _controller,
              itemCount: 10,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final course = widget.courses[index];
                return Align(
                    alignment: Alignment.topCenter,
                    child: BestPlaceCardPage(course: course, rank: index + 1));
              }),
        ),
      ],
    );
  }
}
