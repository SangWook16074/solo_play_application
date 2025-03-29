import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/presentation/course/widget/location_label.dart';
import 'package:solo_play_application/src/presentation/post/view/post_view.dart';

class PostUI extends StatelessWidget {
  const PostUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.basicGrey,

      /// appbar 영역
      /// title과 선택한 지역을 보여주는 label이 같이 appbar 영역으로 들어감.
      appBar: AppBar(
        title: const Text(
          '저장됨',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        backgroundColor: const Color(0xfff8f8f8),
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
      ),
      body: const PostView(),
    );
  }
}
