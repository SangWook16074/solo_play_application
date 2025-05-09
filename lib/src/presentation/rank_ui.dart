import 'package:flutter/material.dart';
import 'package:solo_play_application/src/presentation/rank/view/rank_view.dart';

class RankUI extends StatelessWidget {
  const RankUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          title: const Text(
            '이번 주 핫플레이스',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black87),
          ),
        ),
      ),
      body: const RankView(),
    );
  }
}
