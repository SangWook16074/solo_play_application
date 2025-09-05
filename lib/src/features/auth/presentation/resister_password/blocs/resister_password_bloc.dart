import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/blocs/resister_password_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/blocs/resister_password_state.dart';

class ResisterPasswordBloc
    extends Bloc<ResisterPasswordEvent, ResisterPasswordState> {
  ResisterPasswordBloc() : super(ResisterPasswordState());
}
