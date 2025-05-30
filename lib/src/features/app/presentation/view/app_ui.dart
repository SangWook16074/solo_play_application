import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/utils/bottom_nav_icon.dart';
import 'package:solo_play_application/src/features/course/presentation/view/add_view.dart';
import 'package:solo_play_application/src/features/app/presentation/cubits/bottom_nav_cubit.dart';
import 'package:solo_play_application/src/core/widget/image_icon.dart';
import 'package:solo_play_application/src/features/home/presentation/view/home_ui.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/rank_ui.dart';
import 'package:solo_play_application/src/features/user/presentation/view/my_profile_ui.dart';
import 'package:solo_play_application/src/features/post/presentation/view/post_ui.dart';

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
          const MyProfileUI(
            key: Key("app-view-my-page"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
