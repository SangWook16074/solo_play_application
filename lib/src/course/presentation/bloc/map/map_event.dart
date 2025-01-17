import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/course/domain/models/map_model.dart';

sealed class MapEvent extends Equatable {}

final class MapMoveEvent extends MapEvent {
  final MapModel mapModel;
  MapMoveEvent({required this.mapModel});

  @override
  List<Object?> get props => [mapModel];
}
