import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/course/blocs/region_bloc.dart';

final regionBlocProvider = BlocProvider(create: (context) => RegionViewBloc());
