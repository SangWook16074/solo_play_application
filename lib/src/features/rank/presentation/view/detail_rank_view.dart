import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/best_place_card_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/course_map_view.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/similar_cafe_photo_view.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/place_review_view.dart';

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
            child: BestPlaceCardWidget(
              rank: 1,
              showHeader: false,
            ),
          ),
          SizedBox(height: 10),
          CourseMapView(),
          SizedBox(height: 10),
          PlaceReviewView(),
          SizedBox(height: 10),
          SimilarCafePhotoView(),
          SizedBox(height: 110),
        ],
      ),
    );
  }
}
