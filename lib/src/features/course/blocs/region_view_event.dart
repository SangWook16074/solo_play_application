import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/features/course/cubits/region.dart';

sealed class RegionViewEvent extends Equatable {}

final class UnFocusEvent extends RegionViewEvent {
  @override
  List<Object?> get props => [];
}

final class FocusEvent extends RegionViewEvent {
  final Region region;
  FocusEvent({required this.region});

  @override
  List<Object?> get props => [region];
}

final class MoveEvent extends RegionViewEvent {
  final Region region;
  MoveEvent({required this.region});

  @override
  List<Object?> get props => [region];
}
