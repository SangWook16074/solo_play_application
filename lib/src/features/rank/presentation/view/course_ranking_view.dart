import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:solo_play_application/src/features/rank/presentation/pages/best_course_card_widget_page.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/best_course_card_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/course_ranking_bloc.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/courses_ranking_ui_state.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/show_tip_widget.dart';

class CourseRankingView extends HookWidget {
  const CourseRankingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final state = context.watch<CourseRankingBloc>().state;

    return switch (state) {
      /// 초기 상태
      InitState() => Container(),

      /// 로딩 상태
      LoadingState() => Container(),

      /// 로딩 완료 상태
      LoadedState() => Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            /// 장소에서 tip을 보여주는 고정 위젯
            const ShowTipWidget(),

            /// course에서의 핫플 course card widget을 보여줌.
            /// 순위 갯수만큼 보여줌(최대 10개).
            Expanded(
              child: PageView.builder(
                padEnds: false,
                controller: controller,
                itemCount: state.courses.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.topCenter,
                    child: BestCourseCardWidgetPage(
                        course: state.courses[index],
                        rank: index + 1,
                        showHeader: true),
                  );
                },
              ),
            ),
          ],
        ),

      /// 에러 상태
      ErrorState() => Container(),
    };
  }
}
