import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/core/errors/failure_base.dart';
import 'package:solo_play_application/src/core/utils/result.dart';
import 'package:solo_play_application/src/features/place/domain/entities/area.dart';
import 'package:solo_play_application/src/features/place/domain/entities/level.dart';
import 'package:solo_play_application/src/features/place/domain/entities/parent_category.dart';
import 'package:solo_play_application/src/features/place/domain/entities/place_category.dart';
import 'package:solo_play_application/src/features/place/domain/entities/place_entity.dart';
import 'package:solo_play_application/src/features/place/domain/repositories/place_repository.dart';
import 'package:solo_play_application/src/features/place/domain/usecases/get_places.dart';

class MockPlaceRepository extends Mock implements PlaceRepository {}

void main() {
  group(GetPlaces, () {
    late MockPlaceRepository mockPlaceRepository;
    late GetPlaces getPlaces;

    setUp(() {
      mockPlaceRepository = MockPlaceRepository();
      getPlaces = GetPlacesImpl(placeRepository: mockPlaceRepository);
    });

    test('should return Success when repository returns places', () async {
      final places = [
        PlaceEntity(
          id: '1',
          name: 'Place 1',
          description: 'Desc',
          area: Area.DOBONG,
          level: Level.ONE,
          tags: [],
          urls: [],
          parentCategory: ParentCategory.CULTURE_ART,
          category: PlaceCategory.CAFE,
          likes: 0,
          createdAt: DateTime.now(),
        ),
      ];

      when(() => mockPlaceRepository.getPlaces())
          .thenAnswer((_) async => Success(places));

      final result = await getPlaces.call();

      expect(result, isA<Success<List<PlaceEntity>, FailureBase>>());
      expect((result as Success).data, places);
      verify(() => mockPlaceRepository.getPlaces()).called(1);
    });

    test('should return Failure when repository returns error', () async {
      final failure = UnknownFailure();

      when(() => mockPlaceRepository.getPlaces())
          .thenAnswer((_) async => Failure(failure));

      final result = await getPlaces.call();

      expect(result, isA<Failure<List<PlaceEntity>, FailureBase>>());
      expect((result as Failure).error, failure);
      verify(() => mockPlaceRepository.getPlaces()).called(1);
    });
  });
}
