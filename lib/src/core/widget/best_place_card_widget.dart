import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/data/models/course_model.dart';
import 'package:solo_play_application/src/core/widget/action_button_widget.dart';
import 'package:solo_play_application/src/core/widget/bookmark_icon.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/level_tag_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/rank_number_widget.dart';
import 'package:solo_play_application/src/core/widget/slide_place_image_widget.dart';
import 'package:solo_play_application/src/features/rank/presentation/cubits/course_cubit.dart';

class BestPlaceCardWidget extends StatelessWidget {
  final int rank;
  final bool showHeader;
  final bool isCourse;
  final CourseModel course;

  /// 기본 생성자
  /// detail rank view에서는
  /// header가 보이지 않아야 한다
  const BestPlaceCardWidget({
    super.key,
    required this.rank,
    this.showHeader = false,
    this.isCourse = false,
    required this.course,
  });

  /// 확장 [BestPlaceCardWidget] 생성자
  /// spot rank view에서는
  /// header가 보여야 한다
  const BestPlaceCardWidget.expand({
    super.key,
    required this.rank,
    required this.showHeader,
    required this.isCourse,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    /// 화면을 오른쪽에서 왼쪽으로 당겨 detail rank view로 이동할 수 있다.
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null &&
            details.primaryVelocity! < 0 &&
            showHeader == true &&
            isCourse == false) {
          context.push('/rank/detailPlace', extra: {
            'rank': rank,
            'course': course,
          });
        } else if (details.primaryVelocity != null &&
            details.primaryVelocity! < 0 &&
            showHeader == true &&
            isCourse == true) {
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
            /// 랭킹 번호, 장소 이름 및 위치, 북마크 아이콘 영역
            /// rank ui에서만 헤더가 보이도록 설정
            showHeader
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              /// 랭킹 순위 번호
                              RankNumberWidget(rank: rank),

                              /// 장소의 이름 및 위치
                              (isCourse == true)
                                  ? const Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          '혼자 가도 좋은, 조용한 커피 한 잔의 시간',
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    )
                                  : Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            course.name,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.normal,
                                                color: Colors.black),
                                          ),
                                          Text(
                                            course.addressSummary,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              color: Color(0xff8E8E8E),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                            ],
                          ),
                        ),

                        /// 북마크 아이콘
                        /// 아이콘을 클릭하면 랭킹에 있는 장소를 저장하여
                        /// 저장을 모아두는 곳에서 확인 가능
                        BookmarkIcon(
                          onTap: context.read<CourseCubit>().toggle,
                          isBookmarked:
                              context.watch<CourseCubit>().state.isFavorite,
                        ),
                      ],
                    ),
                  )
                : Container(),

            const SizedBox(height: 10),

            ///
            /// 랭킹 장소의 사진들을 볼 수 있는 영역
            /// 랭킹 장소의 사진 list (최소 3장 ~ 최대 5장)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SlidePlaceImageWidget(
                  isCourse: isCourse,
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
