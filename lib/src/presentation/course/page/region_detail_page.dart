import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/presentation/course/cubit/level_cubit.dart';
import 'package:solo_play_application/src/presentation/course/cubit/region_detail_cubit.dart';
import 'package:solo_play_application/src/presentation/course/cubit/region_detail_view_state.dart';
import 'package:solo_play_application/src/presentation/course/models/region.dart';
import 'package:solo_play_application/src/presentation/course/view/region_detail_view.dart';

class RegionDetailPage extends StatelessWidget {
  final Region region;
  const RegionDetailPage({super.key, required this.region});

  @override
  Widget build(BuildContext context) {
    final initialState = RegionDetailViewState(region: region);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegionDetailCubit(initialState),
        ),
        BlocProvider(
          create: (context) => LevelCubit(),
        )
      ],
      child: Builder(builder: (context) => const RegionDetailView()),
      // create: (newContext) => context.read<RegionViewBloc>(),
    );
  }
}
