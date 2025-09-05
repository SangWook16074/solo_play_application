import 'package:solo_play_application/src/features/auth/presentation/login/cubits/password_visibility_cubit.dart';
import 'package:test/test.dart';

void main() {
  group(PasswordVisibilityCubit, () {
    late PasswordVisibilityCubit passwordVisibilityCubit;

    setUp(() {
      passwordVisibilityCubit = PasswordVisibilityCubit();
    });

    test('should emit false when initial correctly', () {
      expect(passwordVisibilityCubit.state, true);
    });

    test('should toggle correctly', () {
      passwordVisibilityCubit.toggle();
      expect(passwordVisibilityCubit.state, false);
      passwordVisibilityCubit.toggle();
      expect(passwordVisibilityCubit.state, true);
    });
  });
}
