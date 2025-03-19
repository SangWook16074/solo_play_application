import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/presentation/course/models/map_model.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_state.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_bloc.dart';
import 'package:solo_play_application/src/presentation/course/view/map_detail_view.dart';

class MapDetailPage extends StatelessWidget {
  final MapModel mapModel;
  const MapDetailPage({super.key, required this.mapModel});

  @override
  Widget build(BuildContext context) {
    final mapBloc = context.watch<MapBloc>();
    final state = mapBloc.state as MapSelect;
    return MapDetailView(
      title: state.mapModel.label,
      offsets: [
        ...state.mapModel.map,
        for (var near in state.mapModel.nearArea.values)
          ...near.map((n) => n.copy(color: const Color(0xffdbdbdb)))
      ],
    );
  }
}
