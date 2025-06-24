import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:solo_play_application/src/core/widget/best_course_card_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/course_ranking_ui_bloc.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/courses_ranking_ui_state.dart';

class CourseRankingView extends HookWidget {
  const CourseRankingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final state = context.watch<CourseRankingUiBloc>().state;
    return switch (state) {
      /// 초기 상태
      InitState() => Container(),

      /// 로딩 상태
      LoadingState() => Container(),

      /// 로딩 완료 상태
      LoadedState() => Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 16.0, top: 4.0, bottom: 4.0),
              child: Text(
                "tip. 더 자세한 정보는 카드를 옆으로 넘겨보세요->",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff666666),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                padEnds: false,
                controller: controller,
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Align(
                  alignment: Alignment.topCenter,
                  child: BestCourseCardWidget(
                    rank: index + 1,
                    showHeader: true,
                    course: state.courses[index],
                  ),
                ),
              ),
            ),
          ],
        ),

      /// 에러 상태
      ErrorState() => Container(),
    };
  }
}
