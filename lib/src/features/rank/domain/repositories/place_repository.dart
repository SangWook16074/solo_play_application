import 'package:solo_play_application/src/features/rank/data/datasources/remote/place_api_serivces.dart';
import 'package:solo_play_application/src/features/rank/domain/entities/place_entity.dart';

final class PlaceRepositoryImpl implements PlaceRepository {
  final PlaceApiSerivces placeApiSerivces;
  const PlaceRepositoryImpl({required this.placeApiSerivces});
  @override
  Future<List<PlaceEntity>> fetchData() async {
    try {
      final response = await placeApiSerivces.fetchData();
      return response.map((resp) => PlaceEntity.fromResponse(resp)).toList();
    } catch (e) {
      throw "에러가 발생했습니다.";
    }
  }
}

abstract class PlaceRepository {
  Future<List<PlaceEntity>> fetchData();
}
