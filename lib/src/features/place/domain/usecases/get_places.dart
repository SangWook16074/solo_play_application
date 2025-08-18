import 'package:solo_play_application/src/core/errors/failure_base.dart';
import 'package:solo_play_application/src/core/utils/result.dart';
import 'package:solo_play_application/src/features/place/domain/entities/place_entity.dart';
import 'package:solo_play_application/src/features/place/domain/repositories/place_repository.dart';

class GetPlacesImpl extends GetPlaces {
  final PlaceRepository _placeRepository;

  GetPlacesImpl({
    required PlaceRepository placeRepository,
  }) : _placeRepository = placeRepository;

  @override
  Future<Result<List<PlaceEntity>, FailureBase>> call() async {
    final result = await _placeRepository.getPlaces();
    return result;
  }
}

abstract class GetPlaces {
  Future<Result<List<PlaceEntity>, FailureBase>> call();
}
