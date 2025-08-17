import 'package:dio/dio.dart';
import 'package:solo_play_application/src/features/place/data/datasources/remotes/remote_place_api.dart';
import 'package:solo_play_application/src/features/place/data/models/place_model.dart';

class RemotePlaceApiImpl extends RemotePlaceApi {
  final Dio _dio;

  RemotePlaceApiImpl({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<List<PlaceModel>> getPlaces() {
    return _dio.get("/places").then((response) =>
        List<Map<String, dynamic>>.from(response.data)
            .map((json) => PlaceModel.fromJson(json))
            .toList());
  }
}
