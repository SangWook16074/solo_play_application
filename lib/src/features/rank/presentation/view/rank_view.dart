import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/best_place_card.dart';

class RankView extends StatefulWidget {
  const RankView({super.key});

  @override
  State<RankView> createState() => _RankViewState();
}

class _RankViewState extends State<RankView> {
  final PageController controller =
      PageController(initialPage: 0, viewportFraction: 1);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: PageView.builder(
            padEnds: false,
            controller: controller,
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Align(
              alignment: Alignment.topCenter,
              child: BestPlaceCard(rank: index + 1),
            ),
          ),
        ),
      ],
    );
  }
}
