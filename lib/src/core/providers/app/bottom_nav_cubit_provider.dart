import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/app/presentation/cubits/bottom_nav_cubit.dart';

final bottomNavCubitProvider =
    BlocProvider(create: (context) => BottomNavCubit());
