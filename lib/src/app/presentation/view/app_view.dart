import 'package:flutter/material.dart';
import 'package:solo_play_application/src/course/presentation/page/main_page.dart';
import 'package:solo_play_application/src/post/presentation/view/add_post_view.dart';
import 'package:solo_play_application/src/user/presentation/view/my_profile_view.dart';
import 'package:solo_play_application/src/post/presentation/view/post_view.dart';
import 'package:solo_play_application/src/rank/presentation/view/rank_view.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppState();
}

class _AppState extends State<AppView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MainPage(),
    const RankView(),
    const AddPostView(),
    const PostView(),
    const MyProfileView(),
  ];

  void _onItemTepped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.grey, blurRadius: 10),
          ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTepped,
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department_outlined),
              label: 'Rank',
              activeIcon: Icon(Icons.local_fire_department),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_outlined),
              label: 'Add',
              activeIcon: Icon(Icons.add),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              label: 'Post',
              activeIcon: Icon(Icons.bookmark),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'My',
              activeIcon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
