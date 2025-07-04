import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/features/rank/domain/entities/place_entity.dart';

part 'place_model.freezed.dart';

@freezed
abstract class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
    required String name,
    required String address,
    required List<String> images,
    required String description,
    @JsonKey(name: "is_favorite") required bool isFavorite,
  }) = _PlaceModel;

  const PlaceModel._();

  factory PlaceModel.fromEntity(PlaceEntity entity) {
    return PlaceModel(
        name: entity.name,
        address: entity.address,
        images: entity.images,
        description: entity.description,
        isFavorite: entity.isFavorite);
  }

  PlaceEntity toEntity() {
    return PlaceEntity(
        name: name,
        address: address,
        images: images,
        description: description,
        isFavorite: isFavorite);
  }

  String get addressSummary {
    final address = this.address.split(" ").toList();
    final city = address.first;
    final province = address[1];
    return "$city $province";
  }
}
