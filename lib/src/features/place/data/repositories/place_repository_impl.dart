import 'package:dio/dio.dart';
import 'package:solo_play_application/src/core/errors/failure_base.dart';
import 'package:solo_play_application/src/core/utils/result.dart';
import 'package:solo_play_application/src/features/place/data/datasources/remotes/remote_place_api.dart';
import 'package:solo_play_application/src/features/place/domain/entities/place_entity.dart';
import 'package:solo_play_application/src/features/place/domain/repositories/place_repository.dart';

class PlaceRepositoryImpl extends PlaceRepository {
  final RemotePlaceApi _remotePlaceApi;

  PlaceRepositoryImpl({
    required RemotePlaceApi remotePlaceApi,
  }) : _remotePlaceApi = remotePlaceApi;

  @override
  Future<Result<List<PlaceEntity>, FailureBase>> getPlaces() async {
    try {
      final responses = await _remotePlaceApi.getPlaces();
      final places = responses
          .map((response) => PlaceEntity.fromResponse(response))
          .toList();
      return Success(places);
    } on DioException catch (err) {
      // 서버에서 에러 메시지 받아오기
      final message = err.response?.data?["err"] ?? "네트워크 오류";
      return Failure(NetworkFailure(message: message));
    } catch (_) {
      return Failure(ServerFailure(message: "서버와의 연결이 원할하지 않습니다."));
    }
  }
}
