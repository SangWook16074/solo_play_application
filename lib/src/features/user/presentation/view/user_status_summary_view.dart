import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/label_with_count_widget.dart';

class UserStatusSummaryView extends StatelessWidget {
  const UserStatusSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// 사용자의 게시물 수를 나타냄

          LabelWithCountWidget(count: 50, label: "게시물"),

          /// 사용자의 팔로워 수를 나타냄

          LabelWithCountWidget(count: 50, label: "팔로워"),

          /// 사용자의 팔로잉 수를 나타냄

          LabelWithCountWidget(count: 50, label: "팔로잉"),
        ],
      ),
    );
  }
}
