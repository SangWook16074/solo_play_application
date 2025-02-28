import 'package:flutter/material.dart';
import 'package:solo_play_application/src/presentation/course/view/map_view.dart';
import 'package:solo_play_application/src/presentation/course/view/recommend_view.dart';
import 'package:solo_play_application/src/presentation/course/widget/search_button.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _map(),
              _search(),
              // _recommend(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _search() => const Positioned(
      top: 16,
      right: 16,
      child: SearchButton(
        key: Key("main-view-search-button"),
      ));

  // 메인 화면 서울 전체 지도 헥사곤 그리드 뷰
  Widget _map() => const MapView();

  Widget _recommend() => const Align(
      alignment: Alignment.bottomCenter, child: RecommendModalSheet());
}
