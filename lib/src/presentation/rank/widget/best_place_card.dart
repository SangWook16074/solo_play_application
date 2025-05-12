import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/presentation/common/widgets/bookmark_icon.dart';
import 'package:solo_play_application/src/presentation/course/widget/course_map_widget.dart';
import 'package:solo_play_application/src/presentation/rank/widget/slide_place_image.dart';

class BestPlaceCard extends StatefulWidget {
  final int rank;
  const BestPlaceCard({super.key, required this.rank});

  @override
  State<BestPlaceCard> createState() => _BestPlaceWidgetState();
}

class _BestPlaceWidgetState extends State<BestPlaceCard> {
  bool _clickedIcon = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 593,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          _header(widget.rank),
          const SizedBox(height: 10),

          /// 랭킹 장소의 사진들을 볼 수 있는 영역
          _placePhotoList(),
          const SizedBox(height: 10),
          _tag(),
          const SizedBox(height: 10),
          _location(),
          const SizedBox(height: 10),
          _explain(),
        ],
      ),
    );
  }

  /// 랭킹 장소의 사진 list (최소 3장 ~ 최대 5장)
  Widget _placePhotoList() {
    return const Center(child: SlidePlaceImage());
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
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/rank_icon.png',
                      fit: BoxFit.cover, width: 46, height: 46),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '$rank',
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),

              /// 장소의 이름 및 위치
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'mwm',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '서울 중구',
                      style: TextStyle(fontSize: 12),
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
    return const Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          Icon(Icons.location_on_rounded, color: Colors.blue, size: 24),
          Text(
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
}
