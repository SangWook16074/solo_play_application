import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/presentation/course/widget/course_widget.dart';
import 'package:solo_play_application/src/presentation/post/widget/my_posting_widget.dart';

class BestPlaceWidget extends StatefulWidget {
  final int rank;
  const BestPlaceWidget({super.key, required this.rank});

  @override
  State<BestPlaceWidget> createState() => _RankingWidgetState();
}

class _RankingWidgetState extends State<BestPlaceWidget> {
  bool _clickedIcon = false;
  bool _touched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _touched = !_touched;
        });
      },
      child: _touched ? _afterTouch() : _beforeTouch(),
    );
  }

  /// 랭킹에 있는 장소 중 한 곳을 터치하기 전 기본 상태
  Widget _beforeTouch() {
    return Container(
      width: 390,
      decoration: BoxDecoration(
        color: ThemeColor.rightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// 인기 순위 번호
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
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

                      /// 인기 장소의 이름 및 위치
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '3F LOBBY',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
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

                /// 북마크 표시 아이콘
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
            ),

            /// 장소의 사진 영역
            const MyPostingWidget(),
          ],
        ),
      ),
    );
  }

  Widget _afterTouch() {
    return Container(
      width: 390,
      decoration: BoxDecoration(
        color: ThemeColor.rightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// 인기 순위 번호
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
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

                      /// 인기 장소의 이름 및 위치
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '3F LOBBY',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
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

                /// 북마크 표시 아이콘
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
            ),

            /// 장소의 사진 영역
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: MyPostingWidget(),
            ),

            /// 장소의 간략 소개 글
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      '3F LOBBY',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    '건축가의 탕비실이라는 부제로 정성스러운 커피 한상을 내어드리고 있습니다. 햇살로 가득찬 공간에서 여유로운 일상을 즐기시기 바랍니다.',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),

            /// 현재 랭킹 장소가 포함된 인기 코스를 나타냄
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    '3F LOBBY가 포함된 인기있는 코스에요!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                CourseWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
