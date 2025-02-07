import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/course/presentation/bloc/main/main_bloc.dart';
import 'package:solo_play_application/src/course/presentation/bloc/main/main_event.dart';
import 'package:solo_play_application/src/course/presentation/bloc/main/main_state.dart';
import 'package:solo_play_application/src/course/presentation/view/map_view.dart';
import 'package:solo_play_application/src/course/presentation/view/recommend_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _map(),
            _recommend(),
          ],
        ),
      ),
    );
  }

  // 메인 화면 추천 목록 뷰
  Widget _recommend() => BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return ClipRRect(
            child: RecommendView(
              key: const Key("main view recommend"),
              title: "오늘은 카페투어 어떠세요?",
              isShow: (state is MainFocusState) ? false : true,
            ),
          );
        },
      );

  // 메인 화면 서울 전체 지도 헥사곤 그리드 뷰
  Widget _map() => Builder(builder: (context) {
        return Listener(
            onPointerDown: (event) {
              context.read<MainBloc>().add(MainTouchEvent());
            },
            onPointerUp: (event) {
              context.read<MainBloc>().add(MainUnfocusEvent());
            },
            child: const MapView());
      });
}
