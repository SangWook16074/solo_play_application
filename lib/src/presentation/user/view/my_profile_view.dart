import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/presentation/user/%08widget/my_avatar_widget.dart';
import 'package:solo_play_application/src/presentation/user/%08widget/my_profile_edit_btn_widget.dart';
import 'package:solo_play_application/src/presentation/course/widget/course_widget.dart';
import 'package:solo_play_application/src/presentation/post/widget/post_widget.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: CustomScrollView(
        slivers: [
          _header(),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),
          _name(),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),

          _profileEditBtn(),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),

          /// 가장 추천을 많이 받은 코스 detail로 넘어감
          goCourseDetail(context),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),

          _course(),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),

          /// 사용자의 포스팅 detail로 넘어감
          _goPostingDetail(context),
          const SliverToBoxAdapter(child: SizedBox(height: 11)),

          _posting(),
        ],
      ),
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
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: MyAvatarWidget(radius: 36, color: ThemeColor.basicGrey),
          ),
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
      ),
    );
  }

  /// 사용자의 닉네임, 지역을 보여줌.
  Widget _name() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                2,
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
      ),
    );
  }

  /// 프로필 편집 버튼
  Widget _profileEditBtn() => const SliverToBoxAdapter(
        child: MyProfileEditBtnWidget(),
      );

  /// 내 코스 중 가장 추천을 많이 받은 코스 목록으로 가는 텍스트/버튼
  Widget goCourseDetail(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
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
        ),
      ),
    );
  }

  /// 가장 추천을 많이 받은 코스 top3를 보여줌
  Widget _course() {
    return SliverList.builder(
      key: const Key('my-profile-view-course-widget'),
      itemCount: 3,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CourseWidget(),
      ),
    );
  }

  /// 내 포스팅을 목록으로 가는 텍스트 및 버튼
  Widget _goPostingDetail(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
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
        ),
      ),
    );
  }

  /// 사용자의 포스팅 2개를 보여줌
  SliverGrid _posting() {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.7,
          crossAxisCount: 2,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0),
      itemCount: 2,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: PostWidget(),
      ),
    );
  }
}
