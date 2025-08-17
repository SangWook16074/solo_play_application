import 'package:solo_play_application/src/features/place/domain/entities/place_entity.dart';

abstract class PlaceRepository {
  Future<List<PlaceEntity>> getPlaces();
}
