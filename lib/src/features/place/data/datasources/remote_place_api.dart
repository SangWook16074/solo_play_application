import 'package:dio/dio.dart';
import 'package:solo_play_application/src/features/place/data/datasources/place_api.dart';
import 'package:solo_play_application/src/features/rank/data/models/place_model.dart';

class RemotePlaceApi extends PlaceApi {
  final Dio _dio;

  RemotePlaceApi({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<List<PlaceModel>> getPlaces() {
    // TODO: implement getPlaces
    throw UnimplementedError();
  }
}
