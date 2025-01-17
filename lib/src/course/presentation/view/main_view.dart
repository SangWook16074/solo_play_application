import 'package:flutter/material.dart';
import 'package:solo_play_application/src/course/presentation/view/map_view.dart';
import 'package:solo_play_application/src/course/presentation/view/recommend_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _recommend(),
            _map(),
          ],
        ),
      ),
    );
  }

  // 메인 화면 추천 목록 뷰
  Widget _recommend() => const Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: RecommendView(
          key: Key("main view recommend"),
          title: "오늘은 카페투어 어떠세요?",
        ),
      );

  // 메인 화면 서울 전체 지도 헥사곤 그리드 뷰
  Widget _map() => const Expanded(
        child: MapView(),
      );
}
