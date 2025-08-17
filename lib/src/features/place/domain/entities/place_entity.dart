import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/core/utils/enum_extension.dart';
import 'package:solo_play_application/src/features/place/data/models/place_model.dart';
import 'package:solo_play_application/src/features/place/domain/entities/area.dart';
import 'package:solo_play_application/src/features/place/domain/entities/level.dart';
import 'package:solo_play_application/src/features/place/domain/entities/parent_category.dart';
import 'package:solo_play_application/src/features/place/domain/entities/place_category.dart';

part 'place_entity.freezed.dart';

@freezed
abstract class PlaceEntity with _$PlaceEntity {
  const factory PlaceEntity({
    @Default(null) String? id,
    required String name,
    required String description,
    required Area area,
    required Level level,
    required List<String> tags,
    required List<String> urls,
    required ParentCategory parentCategory,
    required PlaceCategory category,
    required int likes,
    required DateTime createdAt,
  }) = _PlaceEntity;

  const PlaceEntity._();

  factory PlaceEntity.fromResponse(PlaceModel response) {
    return PlaceEntity(
        id: response.id,
        name: response.name,
        description: response.description,
        area: Area.values.fromString(response.area),
        level: Level.values.fromString(response.level),
        tags: response.tags,
        urls: response.urls,
        parentCategory:
            ParentCategory.values.fromString(response.parentCategory),
        category: PlaceCategory.values.fromString(response.category),
        likes: response.likes,
        createdAt: response.createdAt);
  }

  PlaceModel toRequest() {
    return PlaceModel(
        id: id,
        name: name,
        description: description,
        area: area.name,
        level: level.name,
        tags: tags,
        urls: urls,
        parentCategory: parentCategory.name,
        category: category.name,
        likes: likes,
        createdAt: createdAt);
  }
}
