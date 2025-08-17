import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/place/data/datasources/remotes/remote_place_api.dart';
import 'package:solo_play_application/src/features/place/data/models/place_model.dart';
import 'package:solo_play_application/src/features/place/data/repositories/place_repository_impl.dart';
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

    test('should returns PlaceEntity list when getPlaces called', () async {
      when(() => mockRemotePlaceApi.getPlaces()).thenAnswer((_) async => [
            PlaceModel(
                name: "name",
                description: "description",
                area: "DOBONG",
                level: "ONE",
                tags: ["tag1", "tag2"],
                urls: ["url1", "url2"],
                parentCategory: "cultureArt",
                category: "cafe",
                likes: 10,
                createdAt: DateTime(2025, 8, 18))
          ]);

      final result = await placeRepository.getPlaces();
      expect(result.isNotEmpty, true);
      expect(result.length, 1);
      verify(
        () => mockRemotePlaceApi.getPlaces(),
      ).called(1);
    });
  });
}
