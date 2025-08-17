import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/features/place/data/models/place_model.dart'
    show PlaceModel;

void main() {
  group(PlaceModel, () {
    test('should create a valid PlaceModel when using constructor', () {
      // when
      final place = PlaceModel(
        id: '1',
        name: '테스트 카페',
        description: '아늑한 분위기의 북카페',
        area: '서울',
        level: '초급',
        tags: ['카페', '혼밥', '조용함'],
        urls: ['http://example.com'],
        parentCategory: 'RELAX_LEISURE',
        category: 'CAFE',
        likes: 10,
        createdAt: DateTime.parse('2025-08-16'),
      );

      // then
      expect(place.id, '1');
      expect(place.name, '테스트 카페');
      expect(place.description, contains('북카페'));
      expect(place.area, '서울');
      expect(place.tags, contains('혼밥'));
      expect(place.likes, greaterThan(0));
    });

    test('should deserialize correctly when fromJson is called', () {
      // when
      final json = {
        'id': '2',
        'name': '테스트 공원',
        'description': '산책하기 좋은 공원',
        'area': '부산',
        'level': '중급',
        'tags': ['공원', '산책'],
        'urls': ['http://park.com'],
        'parentCategory': 'RELAX_LEISURE',
        'category': 'PARK',
        'likes': 5,
        'createdAt': '2025-08-16T00:00:00.000',
      };

      final place = PlaceModel.fromJson(json);

      // then
      expect(place.id, '2');
      expect(place.name, '테스트 공원');
      expect(place.description, startsWith('산책하기'));
      expect(place.area, '부산');
      expect(place.tags, containsAll(['공원', '산책']));
      expect(place.createdAt, DateTime.parse('2025-08-16T00:00:00.000'));
    });

    test('should serialize correctly when toJson is called', () {
      // when
      final place = PlaceModel(
        id: '3',
        name: '테스트 도서관',
        description: '조용히 공부하기 좋은 공간',
        area: '대구',
        level: '상급',
        tags: ['도서관', '스터디'],
        urls: ['http://library.com'],
        parentCategory: 'RELAX_LEISURE',
        category: 'LIBRARY',
        likes: 20,
        createdAt: DateTime.parse('2025-08-16'),
      );

      final json = place.toJson();

      // then
      expect(json['id'], '3');
      expect(json['name'], '테스트 도서관');
      expect(json['description'], contains('공간'));
      expect(json['parentCategory'], 'RELAX_LEISURE');
      expect(json['category'], 'LIBRARY');
      expect(json['likes'], 20);
    });
  });
}
