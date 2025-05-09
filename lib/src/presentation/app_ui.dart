import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/core/utils/bottom_nav_icon.dart';
import 'package:solo_play_application/src/presentation/add/view/add_view.dart';
import 'package:solo_play_application/src/presentation/bottom_nav_cubit.dart';
import 'package:solo_play_application/src/presentation/common/widgets/image_icon.dart';
import 'package:solo_play_application/src/presentation/home_ui.dart';
import 'package:solo_play_application/src/presentation/rank_ui.dart';
import 'package:solo_play_application/src/presentation/my_profile_ui.dart';
import 'package:solo_play_application/src/presentation/post_ui.dart';

class AppUI extends StatelessWidget {
  const AppUI({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<BottomNavCubit>();
    final state = viewModel.state;
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: state.index,
        children: [
          Navigator(
            key: viewModel.key,
            onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (context) => const HomeUI(
                key: Key("app-view-home-page"),
              ),
            ),
          ),
          const RankUI(
            key: Key("app-view-rank-page"),
          ),
          const AddView(
            key: Key("app-view-add-page"),
          ),
          const PostUI(
            key: Key("app-view-post-page"),
          ),
          const MyProfileView(
            key: Key("app-view-my-page"),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  color: ThemeColor.basicGrey,
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.black,
                type: BottomNavigationBarType.fixed,
                onTap: viewModel.changeIndex,
                currentIndex: state.index,
                iconSize: 24,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 0,
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
