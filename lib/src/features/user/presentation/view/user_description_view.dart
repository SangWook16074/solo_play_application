import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';

class UserDescriptionView extends StatelessWidget {
  const UserDescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 16.0),
      sliver: SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// 사용자의 닉네임, 지역 부분
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// 닉네임
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      '너구리',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  /// 지역
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ThemeColor.basicGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                      child: Text(
                        '중구',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              /// 사용자의 해시태그 부분
              Row(
                children: List.generate(
                  2,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      '#혼자서 잘놀아요',
                      style: TextStyle(
                        fontSize: 15,
                        color: ThemeColor.basicGrey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
