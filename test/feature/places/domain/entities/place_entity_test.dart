import 'package:solo_play_application/src/features/place/data/models/place_model.dart';
import 'package:solo_play_application/src/features/place/domain/entities/area.dart';
import 'package:solo_play_application/src/features/place/domain/entities/level.dart';
import 'package:solo_play_application/src/features/place/domain/entities/parent_category.dart';
import 'package:solo_play_application/src/features/place/domain/entities/place_category.dart';
import 'package:solo_play_application/src/features/place/domain/entities/place_entity.dart';
import 'package:test/test.dart';

void main() {
  group(PlaceEntity, () {
    test('should create a PlaceEntity with all required fields', () {
      // given
      final id = 'uuid';
      final name = 'Test Place';
      final description = 'Test Description';
      final area = Area.DOBONG;
      final level = Level.ONE;
      final tags = ['tag1', 'tag2'];
      final urls = ['https://example.com/img1', 'https://example.com/img2'];
      final parentCategory = ParentCategory.cultureArt;
      final category = PlaceCategory.cafe;
      final likes = 10;
      final createdAt = DateTime.now();

      final place = PlaceEntity(
          id: id,
          name: name,
          description: description,
          area: area,
          level: level,
          tags: tags,
          urls: urls,
          parentCategory: parentCategory,
          category: category,
          likes: likes,
          createdAt: createdAt);

      expect(place.id, id);
      expect(place.name, name);
      expect(place.description, description);
      expect(place.area, area);
      expect(place.level, level);
      expect(place.tags, tags);
      expect(place.urls, urls);
      expect(place.parentCategory, parentCategory);
      expect(place.category, category);
      expect(place.likes, likes);
      expect(place.createdAt, createdAt);
    });

    test('should return PlaceEntity correctly when fromResponse called', () {
      final id = 'uuid';
      final name = 'Test Place';
      final description = 'Test Description';
      final area = "DOBONG";
      final level = "ONE";
      final tags = ['tag1', 'tag2'];
      final urls = ['https://example.com/img1', 'https://example.com/img2'];
      final parentCategory = "cultureArt";
      final category = "cafe";
      final likes = 10;
      final createdAt = DateTime.now();

      final response = PlaceModel(
          id: id,
          name: name,
          description: description,
          area: area,
          level: level,
          tags: tags,
          urls: urls,
          parentCategory: parentCategory,
          category: category,
          likes: likes,
          createdAt: createdAt);

      final place = PlaceEntity.fromResponse(response);

      expect(place.id, id);
      expect(place.name, name);
      expect(place.description, description);
      expect(place.area, Area.DOBONG);
      expect(place.level, Level.ONE);
      expect(place.tags, tags);
      expect(place.urls, urls);
      expect(place.parentCategory, ParentCategory.cultureArt);
      expect(place.category, PlaceCategory.cafe);
      expect(place.likes, likes);
      expect(place.createdAt, createdAt);
    });

    test('should return model when toRequest called', () {
      final id = 'uuid';
      final name = 'Test Place';
      final description = 'Test Description';
      final area = Area.DOBONG;
      final level = Level.ONE;
      final tags = ['tag1', 'tag2'];
      final urls = ['https://example.com/img1', 'https://example.com/img2'];
      final parentCategory = ParentCategory.cultureArt;
      final category = PlaceCategory.cafe;
      final likes = 10;
      final createdAt = DateTime.now();

      final place = PlaceEntity(
          id: id,
          name: name,
          description: description,
          area: area,
          level: level,
          tags: tags,
          urls: urls,
          parentCategory: parentCategory,
          category: category,
          likes: likes,
          createdAt: createdAt);

      final model = place.toRequest();

      expect(model.id, id);
      expect(model.name, name);
      expect(model.description, description);
      expect(model.area, area.name);
      expect(model.level, level.name);
      expect(model.tags, tags);
      expect(model.urls, urls);
      expect(model.parentCategory, parentCategory.name);
      expect(model.category, category.name);
      expect(model.likes, likes);
      expect(model.createdAt, createdAt);
    });
  });
}
