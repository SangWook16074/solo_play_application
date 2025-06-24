import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/widget/action_button_widget.dart';
import 'package:solo_play_application/src/core/widget/course_card_header_widget.dart';
import 'package:solo_play_application/src/core/widget/slide_course_image_widget.dart';
import 'package:solo_play_application/src/features/rank/data/models/course_model.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/level_tag_widget.dart';

class BestCourseCardWidget extends StatelessWidget {
  final int rank;
  final bool showHeader;
  final CourseModel course;

  const BestCourseCardWidget(
      {super.key,
      required this.rank,
      required this.showHeader,
      required this.course});

  @override
  Widget build(BuildContext context) {
    /// 화면을 오른쪽에서 왼쪽으로 당겨 detail coure view로 이동할 수 있다.
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null &&
            details.primaryVelocity! < 0 &&
            showHeader == true) {
          context.push('/rank/detailCourse', extra: {
            'rank': rank,
            'course': course,
          });
        }
      },
      child: Container(
        height: 593,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            ///
            /// 랭킹 번호, 어떤 장소인지에 대한 글 타이틀, 북마크 아이콘 영역
            /// course rank view에서만 헤더가 보이도록 설정
            showHeader
                ? CourseCardHeaderWidget(course: course, rank: rank)
                : Container(),

            const SizedBox(height: 10),

            ///
            /// 코스 랭킹 사진들을 볼 수 있는 영역
            /// 코스 랭킹 장소의 사진 list (최소 3장 ~ 최대 5장)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SlideCourseImageWidget(
                  images: course.images,
                ),
              ),
            ),
            const SizedBox(height: 10),

            ///
            /// 태그 영역
            LevelTagWidget(
              text: '혼자는 아직 힘들어 LV.1',
            ),
            const SizedBox(height: 10),

            ///
            /// 장소 상세 정보 영역
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/location_icon.svg'),
                  Text(
                    course.address,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),

            ///
            /// 장소 상세 설명 영역
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                course.description,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 10),

            ////
            /// 길찾기, 공유하기 버튼 영역
            /// detail rank ui에서만 보이도록 설정
            showHeader
                ? Container()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// 길찾기 버튼
                        ActionButtonWidget(
                            onTap: () {},
                            image: 'assets/images/direction_icon.png',
                            text: '길찾기'),

                        /// 공유하기 버튼
                        ActionButtonWidget(
                            onTap: () {},
                            image: 'assets/images/share_icon.png',
                            text: '공유하기'),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
