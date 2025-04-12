import 'package:flutter/material.dart';
import 'package:solo_play_application/src/presentation/rank/widget/best_place_widget.dart';

class RankView extends StatelessWidget {
  const RankView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return BestPlaceWidget(rank: index + 1);
          },
        ),
      ],
    );
  }
}
