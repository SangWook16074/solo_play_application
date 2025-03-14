import 'package:flutter/material.dart';
import 'package:solo_play_application/src/presentation/rank/widget/best_place_widget.dart';

class RankView extends StatelessWidget {
  const RankView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: CustomScrollView(
        slivers: [
          _ranking(),
        ],
      ),
    );
  }

  /// 랭킹별 장소를 보여주는 위젯을 10등까지 보여줌
  Widget _ranking() {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return BestPlaceWidget(rank: index + 1);
      },
    );
  }

  /// appbar 영역
  PreferredSize _appbar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65),
      child: AppBar(
        title: const Text(
          '이번 주 가장 인기있는 장소',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
      ),
    );
  }
}
