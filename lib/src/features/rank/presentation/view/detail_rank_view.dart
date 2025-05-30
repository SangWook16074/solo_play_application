import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/best_place_card_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/course_map_view.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/similar_cafe_photo_view.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/place_review_view.dart';

class DetailRankView extends StatefulWidget {
  final int rank;
  const DetailRankView({super.key, required this.rank});

  @override
  State<DetailRankView> createState() => _DetailRankViewState();
}

class _DetailRankViewState extends State<DetailRankView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BestPlaceCardWidget(
              rank: widget.rank,
            ),
          ),
          const SizedBox(height: 10),
          const CourseMapView(),
          const SizedBox(height: 10),
          const PlaceReviewView(),
          const SizedBox(height: 10),
          const SimilarCafePhotoView(),
          const SizedBox(height: 110),
        ],
      ),
    );
  }
}
