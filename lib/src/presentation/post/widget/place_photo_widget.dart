import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/presentation/user/%08widget/my_avatar_widget.dart';

class PlacePhotoWidget extends StatelessWidget {
  const PlacePhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _photo(),
        _authorProfile(),
      ],
    );
  }

  /// 랭킹에 있는 장소에 대한 글쓴이의 프로필 영역
  Widget _authorProfile() {
    return const Positioned(
      left: 2,
      bottom: 2,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(
          children: [
            /// 글쓴이의 프로필 사진
            MyAvatarWidget(radius: 10, color: Colors.grey),

            /// 글쓴이의 닉네임
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                '너구리',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 랭킹에 있는 장소의 사진 영역
  Widget _photo() {
    return Container(
      width: 135,
      height: 200,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ThemeColor.basicGrey,
      ),
    );
  }
}
