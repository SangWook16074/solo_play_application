import 'package:bloc_test/bloc_test.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/blocs/bloc.dart';

class MockResisterPasswordBloc
    extends MockBloc<ResisterPasswordEvent, ResisterPasswordState>
    implements ResisterPasswordBloc {}
