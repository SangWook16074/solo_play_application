import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';

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

  Widget _ranking() {
    return SliverToBoxAdapter(
      child: Container(
        height: 275,
        width: 390,
        decoration: BoxDecoration(
          color: ThemeColor.basicGrey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
