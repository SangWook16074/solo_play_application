import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/widget/place_card_header_widget.dart';
import 'package:solo_play_application/src/core/widget/action_button_widget.dart';
import 'package:solo_play_application/src/features/rank/data/models/place_model.dart';
import 'package:solo_play_application/src/features/rank/presentation/widget/level_tag_widget.dart';
import 'package:solo_play_application/src/core/widget/slide_place_image_widget.dart';

class BestPlaceCardWidget extends StatelessWidget {
  final int rank;
  final bool showHeader;
  final PlaceModel place;

  const BestPlaceCardWidget({
    super.key,
    required this.rank,
    this.showHeader = true,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    /// 화면을 오른쪽에서 왼쪽으로 당겨 detail place ui로 이동할 수 있다.
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null &&
            details.primaryVelocity! < 0 &&
            showHeader == true) {
          context.push('/rank/detailPlace', extra: {
            'rank': rank,
            'place': place,
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
                ? PlaceCardHeaderWidget(rank: rank, place: place)
                : Container(),
            const SizedBox(height: 10),

            ///
            /// 랭킹 장소의 사진들을 볼 수 있는 영역
            /// 랭킹 장소의 사진 list (최소 3장 ~ 최대 5장)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SlidePlaceImageWidget(
                  images: place.images,
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
                    place.address,
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
                place.description,
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
