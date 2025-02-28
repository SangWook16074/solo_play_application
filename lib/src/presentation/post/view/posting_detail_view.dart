import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/presentation/course/widget/course_header_widget.dart';
import 'package:solo_play_application/src/presentation/post/widget/my_posting_widget.dart';

class PostingDetailView extends StatelessWidget {
  const PostingDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CourseHeaderWidget(),
            const SizedBox(height: 12),
            _post(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  /// 내 포스팅에 대한 정보를 보여주는 영역
  Widget _post() {
    return Column(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Container(
            height: 355,
            width: double.infinity,
            color: ThemeColor.rightGrey,
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '베레프트',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '영업중 서울 강서구',
                    style: TextStyle(fontSize: 10),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: MyPostingWidget(),
                  ),
                  Text(
                    '베레프트',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Flexible(
                    child: Text(
                      '바리스타 & 디자이너 부부가 만든 LP가 있는 우드카페. 엔틱한 인테리어로 감성 충만하게 커피를 마시는 분위기.',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///appbar 영역
  PreferredSize _appBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65),
      child: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
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
      ),
    );
  }
}
