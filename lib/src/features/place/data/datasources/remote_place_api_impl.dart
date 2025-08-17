import 'package:dio/dio.dart';
import 'package:solo_play_application/src/features/place/data/datasources/remote_place_api.dart';
import 'package:solo_play_application/src/features/rank/data/models/place_model.dart';

class RemotePlaceApiImpl extends RemotePlaceApi {
  final Dio _dio;

  RemotePlaceApiImpl({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<List<PlaceModel>> getPlaces() {
    throw UnimplementedError();
  }
}
