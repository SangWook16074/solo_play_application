import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/data/models/course_model.dart';
import 'package:solo_play_application/src/core/widget/best_place_card_widget.dart';
import 'package:solo_play_application/src/core/widget/bookmark_icon.dart';
import 'package:solo_play_application/src/features/rank/presentation/cubits/course_cubit.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/course_map_view.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/place_review_view.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/similar_cafe_photo_view.dart';

class DetailRankUI extends StatelessWidget {
  final int rank;
  final CourseModel course;
  const DetailRankUI({super.key, required this.rank, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0.0,
          title: const Text(
            'mwm',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: BookmarkIcon(
                onTap: context.read<CourseCubit>().toggle,
                isBookmarked: context.watch<CourseCubit>().state.isFavorite,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: BestPlaceCardWidget(
                rank: rank,
                course: course,
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
      ),
    );
  }
}
