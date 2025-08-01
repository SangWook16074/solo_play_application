import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ShowReviewView extends HookWidget {
  const ShowReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    final isPhotoReview = useState<bool>(false);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// 포토리뷰 토글 버튼
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: CupertinoSwitch(
                        activeTrackColor: Color(0xff0070F0),
                        value: isPhotoReview.value,
                        onChanged: (bool newValue) {
                          isPhotoReview.value = newValue;
                        },
                      ),
                    ),
                    Text(
                      '포토리뷰만 보기',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                /// 원하는 순대로 설정하는 아이콘
                Row(
                  children: [
                    Icon(Icons.sync_alt),
                    SizedBox(width: 2),
                    Text(
                      '추천순',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
