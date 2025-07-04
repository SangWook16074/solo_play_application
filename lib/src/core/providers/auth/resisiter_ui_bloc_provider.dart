import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister_ui_bloc.dart';

final resisterUiBlocProvider =
    BlocProvider(create: (context) => ResisterUiBloc());
