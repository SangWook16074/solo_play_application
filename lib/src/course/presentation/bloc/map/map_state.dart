import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/course/domain/models/map_model.dart';

final class MapState extends Equatable {
  final MapModel mapModel;
  const MapState({required this.mapModel});

  @override
  List<Object?> get props => [mapModel];

  MapState copyWith({
    required MapModel mapModel,
  }) {
    return MapState(mapModel: mapModel);
  }
}
