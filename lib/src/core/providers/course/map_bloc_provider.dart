import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_bloc.dart';

final mapBlocProvider = BlocProvider(create: (context) => MapBloc());
