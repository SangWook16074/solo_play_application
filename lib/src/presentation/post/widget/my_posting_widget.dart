import 'package:flutter/material.dart';
import 'package:solo_play_application/src/utils/style/theme_color.dart';

class MyPostingWidget extends StatelessWidget {
  const MyPostingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 355,
      width: double.infinity,
      color: ThemeColor.rightGrey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '베레프트',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const Text(
              '영업중 서울 강서구',
              style: TextStyle(fontSize: 10),
            ),
            _post(),
            const Text(
              '베레프트',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const Flexible(
              child: Text(
                '바리스타 & 디자이너 부부가 만든 LP가 있는 우드카페. 엔틱한 인테리어로 감성 충만하게 커피를 마시는 분위기.',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 포스팅을 보여주는 부분
  Padding _post() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  width: 135,
                  height: 200,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ThemeColor.basicGrey,
                  ),
                ),
                Positioned(
                  left: 2,
                  bottom: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 25,
                  bottom: 4,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      '너구리',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
