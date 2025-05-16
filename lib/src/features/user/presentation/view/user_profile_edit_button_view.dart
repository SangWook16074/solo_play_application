import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/my_profile_edit_btn_widget.dart';

class UserProfileEditButtonView extends StatelessWidget {
  const UserProfileEditButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    void profileEditButtonTap() {}
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 28.0),
      sliver: SliverToBoxAdapter(
          child: MyProfileEditBtnWidget(
        onTap: profileEditButtonTap,
      )),
    );
  }
}
