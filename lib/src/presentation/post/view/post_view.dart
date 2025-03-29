import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/presentation/course/widget/list_button.dart';
import 'package:solo_play_application/src/presentation/course/widget/location_label.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.basicGrey,
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              /// 주요 지역 선택에 따른 구 선택 영역
              Container(
                color: const Color(0xfff8f8f8),
              ),

              /// 주요 지역 선택 영역
              Container(
                width: 135,
                decoration: BoxDecoration(
                  color: const Color(0xfff8f8f8),
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      // color: Color(0xffF8F8F8),
                      color: const Color(0xff000000).withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 26,
                      offset: const Offset(4, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    /// 도심권
                    ListButton(
                      text: "도심권",
                      onTap: () {},
                    ),

                    /// 동서울권
                    ListButton(
                      text: "동서울권",
                      onTap: () {},
                    ),

                    /// 강북권
                    ListButton(
                      text: "강북권",
                      onTap: () {},
                    ),

                    /// 서남권
                    ListButton(
                      text: "서남권",
                      onTap: () {},
                    ),

                    /// 남서울권
                    ListButton(
                      text: "남서울권",
                      onTap: () {},
                    ),

                    /// 강남권
                    ListButton(
                      text: "강남권",
                      onTap: () {},
                    ),

                    /// 동남권
                    ListButton(
                      text: "동남권",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// appbar 영역
  /// title과 선택한 지역을 보여주는 label이 같이 appbar 영역으로 들어감.
  AppBar _appBar() {
    return AppBar(
      title: const Text(
        '저장됨',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: Padding(
          padding: EdgeInsets.only(bottom: 14.0),
          child: LocationLabel(),
        ),
      ),
    );
  }
}
