import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/features/rank/data/dtos/place_response_dto.dart';

part 'place_entity.freezed.dart';

@freezed
abstract class PlaceEntity with _$PlaceEntity {
  const factory PlaceEntity({
    required String name,
    required String address,
    required List<String> images,
    required String description,
    @JsonKey(name: "is_favorite") required bool isFavorite,
  }) = _PlaceEntity;

  const PlaceEntity._();

  factory PlaceEntity.fromResponse(PlaceResponseDto dto) {
    return PlaceEntity(
        name: dto.name,
        address: dto.address,
        images: dto.images,
        description: dto.description,
        isFavorite: dto.isFavorite);
  }
}
