import 'package:flutter/material.dart';
import 'package:solo_play_application/src/presentation/course/view/recommend_view.dart';
import 'package:solo_play_application/src/presentation/course/view/region_view.dart';
import 'package:solo_play_application/src/presentation/course/widget/search_text_field.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFBF9F7),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // 전체 지역 뷰
            RegionView(
              key: Key("main-view-map-view"),
            ),
            // 검색 필드 뷰
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: SearchTextField(
                  hintLabel: "가고싶은 장소를 검색해보세요!",
                  key: Key("main-view-search-button"),
                ),
              ),
            ),
            // _recommend(),
          ],
        ),
      ),
    );
  }

  Widget _recommend() => const Align(
      alignment: Alignment.bottomCenter, child: RecommendModalSheet());
}
