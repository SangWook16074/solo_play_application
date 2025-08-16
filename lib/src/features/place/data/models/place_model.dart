import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/core/typedefs/json_map.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
abstract class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
    @Default(null) String? id,
    required String name,
    required String description,
    required String area,
    required String level,
    required List<String> tags,
    required List<String> urls,
    required String parentCategory,
    required String category,
    required int likes,
    required DateTime createdAt,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(JsonMap json) => _$PlaceModelFromJson(json);
}
