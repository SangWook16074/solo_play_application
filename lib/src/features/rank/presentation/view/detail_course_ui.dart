import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/widget/best_course_card_widget.dart';
import 'package:solo_play_application/src/features/rank/data/models/course_model.dart';
import 'package:solo_play_application/src/core/widget/bookmark_icon.dart';

class DetailCourseUI extends StatefulWidget {
  final int rank;
  final CourseModel course;
  const DetailCourseUI({super.key, required this.rank, required this.course});

  @override
  State<DetailCourseUI> createState() => _DetailCourseUIState();
}

class _DetailCourseUIState extends State<DetailCourseUI> {
  bool _clickedIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            /// 랭킹 순위 번호
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xffEDF5FF),
              ),
              child: Text(
                textAlign: TextAlign.center,
                '${widget.rank}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff0072FF),
                ),
              ),
            ),

            /// 장소의 이름 및 위치

            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  '혼자 가도 좋은, 조용한 커피 한 잔의 시간',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            BookmarkIcon(
              onTap: () {
                setState(() {
                  _clickedIcon = !_clickedIcon;
                });
              },
              isBookmarked: _clickedIcon,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BestCourseCardWidget(
                rank: widget.rank, showHeader: false, course: widget.course),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: 356,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(0xff0070f0),
                ),
              ),
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
