import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/course/presentation/bloc/main/main_bloc.dart';
import 'package:solo_play_application/src/course/presentation/bloc/main/main_event.dart';
import 'package:solo_play_application/src/course/presentation/bloc/main/main_state.dart';
import 'package:solo_play_application/src/course/presentation/view/map_view.dart';
import 'package:solo_play_application/src/course/presentation/view/recommend_view.dart';
import 'package:solo_play_application/src/course/presentation/widget/search_button.dart';
import 'package:solo_play_application/src/course/presentation/widget/search_text_field.dart';

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
  Widget _map() => Builder(builder: (context) {
        return Listener(
            key: const Key("main-view-map-view"),
            onPointerDown: (event) {
              context.read<MainBloc>().add(MainTouchEvent());
            },
            onPointerUp: (event) {
              context.read<MainBloc>().add(MainUnfocusEvent());
            },
            child: const MapView());
      });
}
