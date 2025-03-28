import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/presentation/course/models/region.dart';

final class RegionDetailViewState extends Equatable {
  final Region region;
  const RegionDetailViewState({
    required this.region,
  });

  RegionDetailViewState copyWith({
    Region? region,
  }) {
    return RegionDetailViewState(
      region: region ?? this.region,
    );
  }

  @override
  List<Object?> get props => [region];
}
