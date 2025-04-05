import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/presentation/course/widget/course_map_widget.dart';
import 'package:solo_play_application/src/presentation/post/widget/place_photo_widget.dart';

class BestPlaceWidget extends StatefulWidget {
  final int rank;
  const BestPlaceWidget({super.key, required this.rank});

  @override
  State<BestPlaceWidget> createState() => _BestPlaceWidgetState();
}

class _BestPlaceWidgetState extends State<BestPlaceWidget> {
  bool _clickedIcon = false;
  bool _touched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _touched = !_touched;
          });
        },
        child: Container(
          width: 390,
          decoration: BoxDecoration(
            color: ThemeColor.rightGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
            child: Column(
              children: [
                _header(),

                /// 랭킹 장소의 사진들을 볼 수 있는 영역
                _placePhotoList(),

                /// 랭킹별 장소에 대해 터치를 하면
                /// 장소에 대한 간략 설명과
                /// 장소가 포함된 인기 코스를 추가로 보여줌
                /// 다시 터치하면 원래대로 돌아감
                _afterTouched(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 랭킹 장소의 사진 list (최소 3장 ~ 최대 5장)
  Widget _placePhotoList() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => const PlacePhotoWidget(),
        ),
      ),
    );
  }

  /// 터치 후에 추가되는 간략 설명 및 장소가 포함된 인기 코스 영역
  Widget _afterTouched() {
    return _touched
        ? const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 장소에 대한 간략 설명
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  '건축가의 탕비실이라는 부제로 정성스러운 커피 한상을 내어드리고 있습니다. 햇살로 가득찬 공간에서 여유로운 일상을 즐기시기 바랍니다.',
                  style: TextStyle(fontSize: 12),
                ),
              ),

              /// 랭킹 장소가 포함된 인기 코스에 대한 안내 설명
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  '3F LOBBY가 포함된 인기있는 코스에요!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),

              /// 랭킹 장소가 포함된 인기 코스를 나타내는 영역
              CourseMapWidget(),
            ],
          )
        : Container();
  }

  /// 랭킹 순위 번호, 랭킹 장소의 이름, 위치, 저장 아이콘 영역
  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              /// 랭킹 순위 번호
              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/images/rank_icon.png',
                        fit: BoxFit.cover),
                    Text(
                      '${widget.rank}',
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),

              /// 장소의 이름 및 위치
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '3F LOBBY',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '서울 용산구',
                      style: TextStyle(fontSize: 8),
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
        GestureDetector(
          onTap: () {
            setState(() {
              _clickedIcon = !_clickedIcon;
            });
          },
          child: Icon(
            _clickedIcon ? Icons.bookmark : Icons.bookmark_outline,
          ),
        ),
      ],
    );
  }
}
