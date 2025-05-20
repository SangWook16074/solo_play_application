import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/best_place_card.dart';
import 'package:solo_play_application/src/features/course/presentation/widget/course_map_widget.dart';

class DetailRankView extends StatefulWidget {
  const DetailRankView({super.key});

  @override
  State<DetailRankView> createState() => _DetailRankViewState();
}

class _DetailRankViewState extends State<DetailRankView> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BestPlaceCard(
              rank: 1,
              showHeader: false,
            ),
          ),
          SizedBox(height: 10),
          CourseMapWidget(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
