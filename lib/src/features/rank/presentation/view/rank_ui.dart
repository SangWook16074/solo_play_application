import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/course_rank_view.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/spot_rank_view.dart';

class RankUI extends StatefulWidget {
  const RankUI({super.key});

  @override
  State<RankUI> createState() => _RankUIState();
}

class _RankUIState extends State<RankUI> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          title: const Text(
            '이번 주 핫플 순위',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          bottom: _tabbar(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          SpotRankView(),
          CourseRankView(),
        ],
      ),
    );
  }

  TabBar _tabbar() {
    return TabBar.secondary(
      controller: _tabController,
      labelStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal),
      labelColor: Colors.black,
      unselectedLabelColor: const Color(0xff8E8E8E),
      unselectedLabelStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal),
      tabs: const [
        Tab(
          text: '장소',
        ),
        Tab(
          text: '코스',
        ),
      ],
    );
  }
}
