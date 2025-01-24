import 'package:flutter/material.dart';
import 'package:solo_play_application/src/utils/style/theme_color.dart';
import 'package:solo_play_application/src/course/presentation/widget/course_widget.dart';
import 'package:solo_play_application/src/post/presentation/widget/post_widget.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          leading: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0.0,
          title: const Text(
            '나의 포스팅',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _header(),
            const SizedBox(height: 11),
            _name(),
            const SizedBox(height: 11),
            const SizedBox(height: 11),
            _profileEditBtn(),
            const SizedBox(height: 11),
            _bestCourse(),
          ],
        ),
      ),
    );
  }

  /// 프로필 사진, 게시물, 팔로워, 팔로잉을 보여줌.
  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 72,
                height: 72,
                color: ThemeColor.basicGrey,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Column(
              children: [
                Text('50', style: TextStyle(fontSize: 30)),
                Text('게시물', style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Column(
              children: [
                Text('50', style: TextStyle(fontSize: 30)),
                Text('팔로워', style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Column(
              children: [
                Text('50', style: TextStyle(fontSize: 30)),
                Text('팔로잉', style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 사용자의 닉네임, 지역을 보여줌.
  Widget _name() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                '너구리',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 10),
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
          Row(
            children: List.generate(
              3,
              (index) {
                return Row(
                  children: [
                    Text(
                      '#혼자서 잘놀아요',
                      style: TextStyle(
                        fontSize: 15,
                        color: ThemeColor.basicGrey,
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// 프로필을 편집창으로 가는 프로필 편집 버튼.
  Widget _profileEditBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ThemeColor.basicGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            '프로필 편집',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }

  /// 나의 코스 몰아보기 화면으로 넘어가는 버튼과 가장 추천을 많이 받은 코스들 1,2,3 순위를 보여줌.
  Widget _bestCourse() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '가장 추천을 많이 받은 코스',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          const SizedBox(height: 23),
          for (var i = 0; i < 3; i++) const CourseWidget(),
          const SizedBox(height: 23),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    '너구리',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    '님의 포스팅',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          const SizedBox(height: 23),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PostWidget(),
              PostWidget(),
            ],
          ),
          const SizedBox(height: 23),
        ],
      ),
    );
  }
}
