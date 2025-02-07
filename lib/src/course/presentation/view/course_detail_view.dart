import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/course/presentation/widget/course_header_widget.dart';
import 'package:solo_play_application/src/course/presentation/widget/course_widget.dart';

class CourseDetailView extends StatelessWidget {
  const CourseDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CourseHeaderWidget(),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverList.builder(
            itemCount: 3,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CourseWidget(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
        ],
      ),
    );
  }

  /// appbar 영역
  PreferredSize _appBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65),
      child: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        elevation: 0.0,
        title: const Text(
          '나의 코스',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
