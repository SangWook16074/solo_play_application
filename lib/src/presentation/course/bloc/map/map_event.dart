import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/presentation/course/models/map_model.dart';

sealed class MapEvent extends Equatable {}

final class MapFocusEvent extends MapEvent {
  final MapModel mapModel;
  MapFocusEvent({required this.mapModel});

  @override
  List<Object?> get props => [mapModel];
}

final class MapUnFocusEvent extends MapEvent {
  @override
  List<Object?> get props => [];
}

final class MapMoveEvent extends MapEvent {
  final MapModel mapModel;
  MapMoveEvent({required this.mapModel});

  @override
  List<Object?> get props => [mapModel];
}
