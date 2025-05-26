import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/best_place_card.dart';
import 'package:solo_play_application/src/core/widget/course_map_widget.dart';
import 'package:solo_play_application/src/core/widget/similar_feel_photo_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/similar_cafe_photo_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/visited_review_widget.dart';

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
          SizedBox(height: 10),
          VisitedReviewWidget(),
          SizedBox(height: 10),
          SimilarCafePhotoWidget(),
          SizedBox(height: 110),
        ],
      ),
    );
  }
}
