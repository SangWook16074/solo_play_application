import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/presentation/add/view/add_view.dart';
import 'package:solo_play_application/src/presentation/bottom_nav_cubit.dart';
import 'package:solo_play_application/src/presentation/home_ui.dart';
import 'package:solo_play_application/src/presentation/user/view/my_profile_view.dart';
import 'package:solo_play_application/src/presentation/post/view/post_view.dart';
import 'package:solo_play_application/src/presentation/rank/view/rank_view.dart';

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
          const RankView(
            key: Key("app-view-rank-page"),
          ),
          const AddView(
            key: Key("app-view-add-page"),
          ),
          const PostView(
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
                items: const [
                  BottomNavigationBarItem(
                    key: Key("app-view-bottom-nav-home"),
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                    activeIcon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    key: Key("app-view-bottom-nav-rank"),
                    icon: Icon(Icons.local_fire_department_outlined),
                    label: 'Rank',
                    activeIcon: Icon(Icons.local_fire_department),
                  ),
                  BottomNavigationBarItem(
                    key: Key("app-view-bottom-nav-add"),
                    icon: Icon(Icons.add_outlined),
                    label: 'Add',
                    activeIcon: Icon(Icons.add),
                  ),
                  BottomNavigationBarItem(
                    key: Key("app-view-bottom-nav-post"),
                    icon: Icon(Icons.bookmark_outline),
                    label: 'Post',
                    activeIcon: Icon(Icons.bookmark),
                  ),
                  BottomNavigationBarItem(
                    key: Key("app-view-bottom-nav-mypage"),
                    icon: Icon(Icons.person_outline),
                    label: 'My',
                    activeIcon: Icon(Icons.person),
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
