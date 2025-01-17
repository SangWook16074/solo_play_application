import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/course/domain/models/map_model.dart';
import 'package:solo_play_application/src/course/presentation/bloc/map/map_state.dart';
import 'package:solo_play_application/src/course/presentation/bloc/map/map_bloc.dart';
import 'package:solo_play_application/src/course/presentation/view/map_detail_view.dart';

class MapDetailPage extends StatelessWidget {
  final MapModel mapModel;
  const MapDetailPage({super.key, required this.mapModel});

  @override
  Widget build(BuildContext context) {
    // final cubit = MapViewCubit(mapModel);
    final mapBloc = MapBloc(mapModel: mapModel);
    return BlocProvider<MapBloc>(
      create: (context) => mapBloc,
      child: BlocBuilder<MapBloc, MapState>(
          bloc: mapBloc,
          builder: (context, state) {
            return MapDetailView(
              title: mapBloc.state.mapModel.label,
              offsets: [
                ...mapBloc.state.mapModel.map,
                for (var near in mapBloc.state.mapModel.nearArea.values)
                  ...near.map((n) => n.copy(color: const Color(0xffdbdbdb)))
              ],
            );
          }),
    );
  }
}
