import 'package:solo_play_application/src/features/place/data/datasources/remotes/remote_place_api.dart';
import 'package:solo_play_application/src/features/place/domain/entities/place_entity.dart';
import 'package:solo_play_application/src/features/place/domain/repositories/place_repository.dart';

class PlaceRepositoryImpl extends PlaceRepository {
  final RemotePlaceApi _remotePlaceApi;

  PlaceRepositoryImpl({
    required RemotePlaceApi remotePlaceApi,
  }) : _remotePlaceApi = remotePlaceApi;

  @override
  Future<List<PlaceEntity>> getPlaces() {
    return _remotePlaceApi.getPlaces().then((responses) => responses
        .map((response) => PlaceEntity.fromResponse(response))
        .toList());
  }
}
