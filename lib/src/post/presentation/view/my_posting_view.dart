import 'package:flutter/material.dart';
import 'package:solo_play_application/src/post/presentation/widget/my_posting_widget.dart';
import 'package:solo_play_application/src/utils/style/theme_color.dart';

class MyPostingView extends StatelessWidget {
  const MyPostingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(),
            const SizedBox(height: 12),
            Column(
              children: List.generate(
                3,
                (index) => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: MyPostingWidget(),
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
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
      ),
    );
  }

  /// 시, 구 들어간 순서대로 보여줌
  Widget _header() {
    return Center(
      child: Container(
        height: 40,
        width: 358,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: ThemeColor.basicGrey,
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              '서울시 > 동대문구',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
