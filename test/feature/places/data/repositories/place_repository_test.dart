import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/core/errors/failure_base.dart';
import 'package:solo_play_application/src/core/utils/result.dart';
import 'package:solo_play_application/src/features/place/data/datasources/remotes/remote_place_api.dart';
import 'package:solo_play_application/src/features/place/data/models/place_model.dart';
import 'package:solo_play_application/src/features/place/data/repositories/place_repository_impl.dart';
import 'package:solo_play_application/src/features/place/domain/entities/place_entity.dart';
import 'package:solo_play_application/src/features/place/domain/repositories/place_repository.dart';

class MockRemotePlaceApi extends Mock implements RemotePlaceApi {}

void main() {
  group(PlaceRepository, () {
    late MockRemotePlaceApi mockRemotePlaceApi;
    late PlaceRepository placeRepository;

    setUp(() {
      mockRemotePlaceApi = MockRemotePlaceApi();
      placeRepository = PlaceRepositoryImpl(remotePlaceApi: mockRemotePlaceApi);
    });

    test('should return Success when getPlaces succeeds', () async {
      when(() => mockRemotePlaceApi.getPlaces()).thenAnswer((_) async => [
            PlaceModel(
              name: "name",
              description: "description",
              area: "DOBONG",
              level: "ONE",
              tags: ["tag1", "tag2"],
              urls: ["url1", "url2"],
              parentCategory: "CULTURE_ART",
              category: "CAFE",
              likes: 10,
              createdAt: DateTime(2025, 8, 18),
            )
          ]);

      final result = await placeRepository.getPlaces();

      expect(result, isA<Success<List<PlaceEntity>, FailureBase>>());
      expect((result as Success).data.first.name, "name");

      verify(() => mockRemotePlaceApi.getPlaces()).called(1);
    });

    test('should return Failure when getPlaces throws DioException', () async {
      when(() => mockRemotePlaceApi.getPlaces())
          .thenThrow(DioException(requestOptions: RequestOptions(path: '/')));

      final result = await placeRepository.getPlaces();

      expect(result, isA<Failure<List<PlaceEntity>, FailureBase>>());
      expect((result as Failure).error, isA<FailureBase>());

      verify(() => mockRemotePlaceApi.getPlaces()).called(1);
    });
  });
}
