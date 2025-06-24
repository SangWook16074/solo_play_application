import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/widget/bookmark_icon.dart';
import 'package:solo_play_application/src/features/rank/data/models/course_model.dart';
import 'package:solo_play_application/src/features/rank/presentation/cubits/course_cubit.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/rank_number_widget.dart';

class CourseCardHeaderWidget extends StatelessWidget {
  final CourseModel course;
  final int rank;
  const CourseCardHeaderWidget(
      {super.key, required this.course, required this.rank});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                /// 랭킹 순위 번호
                RankNumberWidget(rank: rank),

                /// 어떤 카페인지 말해주는 설명
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      course.name,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          /// 북마크 아이콘
          /// 아이콘을 클릭하면 랭킹에 있는 장소를 저장하여
          /// 저장을 모아두는 곳에서 확인 가능
          BookmarkIcon(
            onTap: context.read<CourseCubit>().toggle,
            isBookmarked: context.watch<CourseCubit>().state.isFavorite,
          ),
        ],
      ),
    );
  }
}
