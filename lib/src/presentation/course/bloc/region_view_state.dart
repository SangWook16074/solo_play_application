import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/presentation/course/models/region.dart';

sealed class RegionViewState extends Equatable {}

final class RegionUnSelect extends RegionViewState {
  @override
  List<Object?> get props => [];
}

final class RegionSelect extends RegionViewState {
  final Region region;
  RegionSelect({required this.region});

  RegionSelect copyWith({
    required Region region,
  }) {
    return RegionSelect(region: region);
  }

  @override
  List<Object?> get props => [region];
}
