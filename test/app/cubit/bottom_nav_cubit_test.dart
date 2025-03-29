import 'package:solo_play_application/src/presentation/bottom_nav_cubit.dart';
import 'package:test/test.dart';

void main() {
  group(BottomNavCubit, () {
    late BottomNavCubit cubit;

    setUp(() {
      cubit = BottomNavCubit();
    });

    test("초기 State는 home이다.", () {
      expect(cubit.state, PageType.home);
    });

    test("사용자는 1번 인덱스로 Rank로 상태를 갱신할 수 있다.", () {
      cubit.changeIndex(1);
      expect(cubit.state, PageType.rank);
    });

    test("사용자는 2번 인덱스로 Add 상태로 갱신할 수 있다.", () {
      cubit.changeIndex(2);
      expect(cubit.state, PageType.add);
    });

    test("사용자는 3번 인덱스로 Post 상태로 갱신할 수 있다.", () {
      cubit.changeIndex(3);
      expect(cubit.state, PageType.post);
    });

    test("사용자는 4번 인덱스로 MyPage 상태로 갱신할 수 있다.", () {
      cubit.changeIndex(4);
      expect(cubit.state, PageType.mypage);
    });
  });
}
