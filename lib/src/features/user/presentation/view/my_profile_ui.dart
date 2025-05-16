import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/user/presentation/view/user_description_view.dart';
import 'package:solo_play_application/src/features/user/presentation/view/user_image_view.dart';
import 'package:solo_play_application/src/features/user/presentation/view/user_posting_grid_view.dart';
import 'package:solo_play_application/src/features/user/presentation/view/user_profile_edit_button_view.dart';
import 'package:solo_play_application/src/features/user/presentation/view/user_status_summary_view.dart';

class MyProfileUI extends StatelessWidget {
  const MyProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color(0xfff9f9f9),
              pinned: false,
              floating: true,
              leading: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.arrow_back_ios),
              ),
              elevation: 0.0,
              title: const Text(
                '내 프로필',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.more_vert),
                )
              ],
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    /// 사용자 프로필 사진 영역
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: MyProfileImageView(),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Expanded(child: UserStatusSummaryView())
                  ],
                ),
              ),
            ),
            const UserDescriptionView(),
            const UserProfileEditButtonView(),
            const UserPostingGridView()
          ],
        ),
      ),
    );
  }
}
