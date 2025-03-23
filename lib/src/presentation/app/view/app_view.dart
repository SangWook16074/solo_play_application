import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/presentation/app/cubit/bottom_nav_cubit.dart';
import 'package:solo_play_application/src/presentation/course/page/main_page.dart';
import 'package:solo_play_application/src/presentation/add/view/add_view.dart';
import 'package:solo_play_application/src/presentation/user/view/my_profile_view.dart';
import 'package:solo_play_application/src/presentation/post/view/post_view.dart';
import 'package:solo_play_application/src/presentation/rank/view/rank_view.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

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
            AddView(
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

  Widget _bottomNav() => BlocBuilder<BottomNavCubit, PageType>(
        builder: (context, state) {
          return BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            onTap: context.read<BottomNavCubit>().changeIndex,
            currentIndex: state.index,
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
          );
        },
      );
}
