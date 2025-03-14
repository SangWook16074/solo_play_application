import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';
import 'package:solo_play_application/src/presentation/user/%08widget/my_avatar_widget.dart';
import 'package:solo_play_application/src/presentation/user/%08widget/my_profile_edit_btn_widget.dart';
import 'package:solo_play_application/src/presentation/course/widget/course_map_widget.dart';
import 'package:solo_play_application/src/presentation/post/widget/posting_thumbnail_widget.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: CustomScrollView(
        slivers: [
          _header(),
          _name(),
          _profileEditBtn(),

          /// 가장 추천을 많이 받은 내 코스 목록으로 이동
          goCourseDetail(context),
          _course(),

          /// 사용자의 포스팅 목록으로 이동
          _goPostingDetail(context),

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
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 22.0),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// 사용자 프로필 사진 영역
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MyAvatarWidget(radius: 36, color: ThemeColor.basicGrey),
            ),

            /// 사용자의 게시물 수를 나타냄
            const Column(
              children: [
                Text('50', style: TextStyle(fontSize: 30)),
                Text('게시물', style: TextStyle(fontSize: 15)),
              ],
            ),

            /// 사용자의 팔로워 수를 나타냄

            const Column(
              children: [
                Text('50', style: TextStyle(fontSize: 30)),
                Text('팔로워', style: TextStyle(fontSize: 15)),
              ],
            ),

            /// 사용자의 팔로잉 수를 나타냄

            const Padding(
              padding: EdgeInsets.only(right: 50.0),
              child: Column(
                children: [
                  Text('50', style: TextStyle(fontSize: 30)),
                  Text('팔로잉', style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 사용자의 닉네임, 지역, 해시태그를 보여줌.
  Widget _name() {
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

  /// 프로필 편집 버튼
  Widget _profileEditBtn() => const SliverPadding(
        padding: EdgeInsets.only(bottom: 28.0),
        sliver: SliverToBoxAdapter(child: MyProfileEditBtnWidget()),
      );

  /// 가장 추천을 많이 받은 내 코스 목록으로 가는 안내 설명 및 버튼
  Widget goCourseDetail(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 12.0),
      sliver: SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// 안내 설명
              const Text(
                '가장 추천을 많이 받은 코스',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),

              /// 내 코스 목록 이동 버튼
              GestureDetector(
                onTap: () {
                  context.push('/courseDetailView');
                },
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 가장 추천을 많이 받은 코스를 추천 순대로 3개를 보여줌
  Widget _course() {
    return SliverList.builder(
      key: const Key('my-profile-view-course-widget'),
      itemCount: 3,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 28.0),
        child: CourseMapWidget(),
      ),
    );
  }

  /// 내 포스팅을 목록으로 가는 텍스트 및 버튼
  Widget _goPostingDetail(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 12.0),
      sliver: SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// 사용자 포스팅 설명 안내
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "너구리",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: "님의 포스팅",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ],
                ),
              ),

              /// 내 포스팅 목록 이동 버튼
              GestureDetector(
                onTap: () {
                  context.push('/postingDetailView');
                },
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 사용자의 포스팅 썸네일 2개를 보여주는 영역
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
        child: PostingThumbnailWidget(),
      ),
    );
  }
}
