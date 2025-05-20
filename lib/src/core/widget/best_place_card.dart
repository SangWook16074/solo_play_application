import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/widget/bookmark_icon.dart';
import 'package:solo_play_application/src/core/widget/slide_place_image.dart';

class BestPlaceCard extends StatefulWidget {
  final int rank;
  final bool showHeader;
  const BestPlaceCard({super.key, required this.rank, this.showHeader = true});

  @override
  State<BestPlaceCard> createState() => _BestPlaceWidgetState();
}

class _BestPlaceWidgetState extends State<BestPlaceCard> {
  bool _clickedIcon = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity != null &&
            details.primaryVelocity! < 0 &&
            widget.showHeader == true) {
          context.push('/detailRankUI');
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

            /// 랭킹 번호, 장소 이름 및 위치, 북마크 아이콘 영역
            /// rank ui에서만 헤더가 보이도록 설정
            widget.showHeader ? _header(widget.rank) : Container(),

            const SizedBox(height: 10),

            /// 랭킹 장소의 사진들을 볼 수 있는 영역
            _placePhotoList(),
            const SizedBox(height: 10),

            /// 태그 영역
            _tag(),
            const SizedBox(height: 10),

            /// 장소 상세 정보 영역
            _location(),
            const SizedBox(height: 10),

            /// 장소 상세 설명 영역
            _explain(),
            const SizedBox(height: 10),

            /// 길찾기, 공유하기 버튼 영역
            /// detail rank ui에서만 보이도록 설정
            widget.showHeader ? Container() : _actionButton(),
          ],
        ),
      ),
    );
  }

  /// 랭킹 장소의 사진 list (최소 3장 ~ 최대 5장)
  Widget _placePhotoList() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SlidePlaceImage(),
      ),
    );
  }

  /// 랭킹 순위 번호, 랭킹 장소의 이름, 위치, 저장 아이콘 영역
  Widget _header(int rank) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
                  '$rank',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color(0xff0072FF),
                  ),
                ),
              ),

              /// 장소의 이름 및 위치
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'mwm',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          color: Colors.black),
                    ),
                    Text(
                      '서울 중구',
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

          /// 북마크 아이콘
          /// 아이콘을 클릭하면 랭킹에 있는 장소를 저장하여
          /// 저장을 모아두는 곳에서 확인 가능
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
    );
  }

  Widget _tag() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blue,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
          child: Text(
            '혼자는 아직 힘들어 LV.1',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }

  Widget _location() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/location_icon.svg'),
          const Text(
            '서울 용산구 한강대로 15길 19-19 3층',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

  Widget _explain() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'mwm은 카페와 스튜디오를 같이 운영합니다. 커피음료와 간단한 디저트들이 준비되어있고 mwm에서 제작한 그릇들도 구입 가능합니다.',
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget _actionButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// 길찾기 버튼
          Container(
            width: 160,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/direction_icon.png'),
                  const SizedBox(width: 4),
                  const Text(
                    '길찾기',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal),
                  )
                ],
              ),
            ),
          ),

          /// 공유하기 버튼
          Container(
            width: 160,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/share_icon.png'),
                  const SizedBox(width: 4),
                  const Text(
                    '공유하기',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
