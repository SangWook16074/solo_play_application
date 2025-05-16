import 'package:flutter/material.dart';
import 'package:solo_play_application/src/presentation/rank/view/rank_view.dart';

class RankUI extends StatelessWidget {
  const RankUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AppBar(
              title: const Text(
                '이번 주 핫플레이스',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text(
                "tip. 더 자세한 정보는 카드를 옆으로 넘겨보세요->",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff666666),
                ),
              ),
            ),
          ],
        ),
      ),
      body: const RankView(),
    );
  }
}
