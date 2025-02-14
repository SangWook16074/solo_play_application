import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/user/presentation/%08widget/my_avatar_widget.dart';
import 'package:solo_play_application/src/utils/style/theme_color.dart';
import 'package:solo_play_application/src/course/presentation/widget/course_widget.dart';
import 'package:solo_play_application/src/post/presentation/widget/post_widget.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _header(),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),
          SliverToBoxAdapter(
            child: _name(),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),
          SliverToBoxAdapter(child: _profileEditBtn()),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),
          SliverToBoxAdapter(
            child: goCourseDetail(context),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),
          SliverList.builder(
            itemCount: 3,
            itemBuilder: (context, index) => const CourseWidget(),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),
          SliverToBoxAdapter(
            child: _goPostingDetail(context),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0),
            itemCount: 2,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.all(8.0),
              child: PostWidget(),
            ),
          ),
        ],
      ),
    );
  }

  /// 내 코스 중 가장 추천을 많이 받은 코스 목록으로 가는 텍스트/버튼
  Widget goCourseDetail(BuildContext context) {
    return Row(
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
          onTap: () {
            context.push('/courseDetailView');
          },
          child: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  /// appbar 영역
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
          '내 프로필',
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
    );
  }

  /// 프로필 사진, 게시물, 팔로워, 팔로잉을 보여줌.
  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyAvatarWidget(radius: 36, color: ThemeColor.basicGrey),
        const Column(
          children: [
            Text('50', style: TextStyle(fontSize: 30)),
            Text('게시물', style: TextStyle(fontSize: 15)),
          ],
        ),
        const Column(
          children: [
            Text('50', style: TextStyle(fontSize: 30)),
            Text('팔로워', style: TextStyle(fontSize: 15)),
          ],
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
    );
  }

  /// 사용자의 닉네임, 지역을 보여줌.
  Widget _name() {
    return Column(
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
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
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
    );
  }

  /// 프로필을 편집창으로 가는 프로필 편집 버튼.
  Widget _profileEditBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
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

  /// 내 포스팅을 보여줌
  Widget _goPostingDetail(BuildContext context) {
    return Row(
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
          onTap: () {
            context.push('/postingDetailView');
          },
          child: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
