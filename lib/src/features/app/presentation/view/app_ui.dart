import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/utils/bottom_nav_icon.dart';
import 'package:solo_play_application/src/features/app/presentation/cubits/bottom_nav_cubit.dart';
import 'package:solo_play_application/src/core/widget/image_icon.dart';

class AppUI extends StatelessWidget {
  final Widget child;
  const AppUI({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<BottomNavCubit>();
    final currentIndex = viewModel.state.index;
    return Scaffold(
      extendBody: true,
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          viewModel.changeIndex(index);
          switch (index) {
            case 0:
              context.go('/');
            case 1:
              context.go('/rank');
            case 2:
              context.go('/add');
            case 3:
              context.go('/posts');
            case 4:
              context.go('/myprofiles');
              break;
          }
        },
        currentIndex: currentIndex,
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
