import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/widget/bookmark_icon.dart';
import 'package:solo_play_application/src/features/rank/data/models/place_model.dart';
import 'package:solo_play_application/src/features/rank/presentation/cubits/place_cubit.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/rank_number_widget.dart';

class PlaceCardHeaderWidget extends StatelessWidget {
  final int rank;
  final PlaceModel place;
  const PlaceCardHeaderWidget(
      {super.key, required this.rank, required this.place});

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
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.name,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            color: Colors.black),
                      ),
                      Text(
                        place.addressSummary,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color(0xff8E8E8E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// 북마크 아이콘
          /// 아이콘을 클릭하면 랭킹에 있는 장소를 저장하여
          /// 저장을 모아두는 곳에서 확인 가능
          BookmarkIcon(
            onTap: context.read<PlaceCubit>().toggle,
            isBookmarked: context.watch<PlaceCubit>().state.isFavorite,
          ),
        ],
      ),
    );
  }
}
