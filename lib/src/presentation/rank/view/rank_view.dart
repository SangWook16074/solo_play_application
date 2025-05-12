import 'package:flutter/material.dart';
import 'package:solo_play_application/src/presentation/rank/widget/best_place_card.dart';

class RankView extends StatelessWidget {
  const RankView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Text(
            "tip. 장소를 더 알고 싶다면 화면을 옆으로 넘겨보세요->",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff666666),
            ),
          ),
        ),
        SizedBox(height: 12),
        Center(child: BestPlaceCard(rank: 1)),
      ],
    );
  }
}
