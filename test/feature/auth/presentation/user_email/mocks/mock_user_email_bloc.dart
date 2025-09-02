import 'package:bloc_test/bloc_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/blocs/bloc.dart';

class MockUserEmailBloc extends MockBloc<UserEmailEvent, UserEmailState>
    implements UserEmailBloc {}
