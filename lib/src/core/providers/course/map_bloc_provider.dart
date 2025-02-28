import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_bloc.dart';
import 'package:solo_play_application/src/presentation/course/models/map_model.dart';

final mapBlocProvider =
    BlocProvider(create: (context) => MapBloc(mapModel: MapModel.init));
