import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/get_user_access_token_usecase.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_state.dart';
import 'package:test/test.dart';

class MockGetUserAccessTokenUsecase extends Mock
    implements GetUserAccessTokenUsecase {}

void main() {
  group(AuthBloc, () {
    late AuthBloc authBloc;
    late MockGetUserAccessTokenUsecase mockUsecase;

    setUp(() {
      mockUsecase = MockGetUserAccessTokenUsecase();
      authBloc = AuthBloc(getUserAccessTokenUsecase: mockUsecase);
    });

    test('initial state is unknown', () {
      expect(authBloc.state.status, AuthenticateStatus.unknown);
    });

    blocTest(
      'emits authenticated when accessToken is not null',
      build: () => authBloc,
      act: (bloc) {
        when(() => mockUsecase.call()).thenAnswer((_) async => 'token');
        bloc.add(AuthCheck());
      },
      expect: () => [AuthState(status: AuthenticateStatus.authenticated)],
    );

    blocTest(
      "emits unauthenticated when accessToken is null",
      build: () => authBloc,
      act: (bloc) {
        when(() => mockUsecase.call()).thenAnswer((_) async => null);
        bloc.add(AuthCheck());
      },
      expect: () => [AuthState(status: AuthenticateStatus.unauthenticated)],
    );
  });
}
