import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_response_dto.freezed.dart';
part 'place_response_dto.g.dart';

@freezed
abstract class PlaceResponseDto with _$PlaceResponseDto {
  const factory PlaceResponseDto({
    required String name,
    required String address,
    required List<String> images,
    required String description,
    @JsonKey(name: "is_favorite") required bool isFavorite,
  }) = _PlaceResponseDto;

  factory PlaceResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceResponseDtoFromJson(json);
}
