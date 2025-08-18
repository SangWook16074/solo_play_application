import 'package:solo_play_application/src/core/errors/failure_base.dart';
import 'package:solo_play_application/src/core/utils/result.dart';
import 'package:solo_play_application/src/features/place/domain/entities/place_entity.dart';

abstract class PlaceRepository {
  Future<Result<List<PlaceEntity>, FailureBase>> getPlaces();
}
