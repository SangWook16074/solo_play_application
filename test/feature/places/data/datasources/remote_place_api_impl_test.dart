import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/place/data/datasources/remotes/remote_place_api.dart';
import 'package:solo_play_application/src/features/place/data/datasources/remotes/remote_place_api_impl.dart';
import 'package:solo_play_application/src/features/place/data/models/place_model.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group(RemotePlaceApiImpl, () {
    late MockDio dio;
    late RemotePlaceApi remotePlaceApi;

    group('getPlaces method', () {
      setUp(() {
        dio = MockDio();
        remotePlaceApi = RemotePlaceApiImpl(dio: dio);
      });
      test('should returns PlaceModels list when statusCode == 200', () async {
        when(() => dio.get("/places")).thenAnswer((_) async => Response(
              requestOptions: RequestOptions(
                path: "/places",
              ),
              data: [],
              statusCode: 200,
            ));

        final result = await remotePlaceApi.getPlaces();

        expect(result, isA<List<PlaceModel>>());
      });
    });
  });
}
