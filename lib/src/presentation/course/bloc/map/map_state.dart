import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/presentation/course/models/map_model.dart';

sealed class MapState extends Equatable {}

final class MapUnSelect extends MapState {
  @override
  List<Object?> get props => [];
}

final class MapSelect extends MapState {
  final MapModel mapModel;
  MapSelect({required this.mapModel});

  MapSelect copyWith({
    required MapModel mapModel,
  }) {
    return MapSelect(mapModel: mapModel);
  }

  @override
  List<Object?> get props => [mapModel];
}
