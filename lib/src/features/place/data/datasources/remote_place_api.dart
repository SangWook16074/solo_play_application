import 'package:solo_play_application/src/features/rank/data/models/place_model.dart';

abstract class RemotePlaceApi {
  Future<List<PlaceModel>> getPlaces();
}
