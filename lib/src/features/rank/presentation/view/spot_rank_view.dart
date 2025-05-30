import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/best_place_card_widget.dart';

class SpotRankView extends StatefulWidget {
  const SpotRankView({super.key});

  @override
  State<SpotRankView> createState() => _SpotRankViewState();
}

class _SpotRankViewState extends State<SpotRankView> {
  final PageController controller =
      PageController(initialPage: 0, viewportFraction: 1);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 16.0, top: 4.0, bottom: 4.0),
          child: Text(
            "tip. 더 자세한 정보는 카드를 옆으로 넘겨보세요->",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff666666),
            ),
          ),
        ),
        Expanded(
          child: PageView.builder(
            padEnds: false,
            controller: controller,
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Align(
              alignment: Alignment.topCenter,
              child: BestPlaceCardWidget.expand(rank: index + 1),
            ),
          ),
        ),
      ],
    );
  }
}
