import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/utils/bottom_nav_icon.dart';
import 'package:solo_play_application/src/presentation/bottom_nav_cubit.dart';
import 'package:solo_play_application/src/presentation/common/widgets/image_icon.dart';
import 'package:solo_play_application/src/presentation/course/page/main_page.dart';
import 'package:solo_play_application/src/presentation/post/view/add_post_view.dart';
import 'package:solo_play_application/src/presentation/user/view/my_profile_view.dart';
import 'package:solo_play_application/src/presentation/post/view/post_view.dart';
import 'package:solo_play_application/src/presentation/rank/view/rank_view.dart';

class AppUI extends StatelessWidget {
  const AppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.grey, blurRadius: 10),
            ],
          ),
          child: _bottomNav()),
    );
  }

  Widget _body() =>
      BlocBuilder<BottomNavCubit, PageType>(builder: (context, state) {
        return IndexedStack(
          index: state.index,
          children: const [
            MainPage(
              key: Key("app-view-home-page"),
            ),
            RankView(
              key: Key("app-view-rank-page"),
            ),
            AddPostView(
              key: Key("app-view-add-page"),
            ),
            PostView(
              key: Key("app-view-post-page"),
            ),
            MyProfileView(
              key: Key("app-view-my-page"),
            ),
          ],
        );
      });

  Widget _bottomNav() => ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
        child: BlocBuilder<BottomNavCubit, PageType>(
          builder: (context, state) {
            return BottomNavigationBar(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              onTap: context.read<BottomNavCubit>().changeIndex,
              currentIndex: state.index,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  key: const Key("app-view-bottom-nav-home"),
                  icon: ImageIconWidget(path: BottomNavIcon.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  key: const Key("app-view-bottom-nav-rank"),
                  icon: ImageIconWidget(path: BottomNavIcon.rank),
                  label: 'Rank',
                ),
                BottomNavigationBarItem(
                  key: const Key("app-view-bottom-nav-add"),
                  icon: ImageIconWidget(path: BottomNavIcon.upload),
                  label: 'Add',
                ),
                BottomNavigationBarItem(
                  key: const Key("app-view-bottom-nav-post"),
                  icon: ImageIconWidget(path: BottomNavIcon.bookmark),
                  label: 'Post',
                ),
                BottomNavigationBarItem(
                  key: const Key("app-view-bottom-nav-mypage"),
                  icon: ImageIconWidget(path: BottomNavIcon.mypage),
                  label: 'My',
                ),
              ],
            );
          },
        ),
      );
}
