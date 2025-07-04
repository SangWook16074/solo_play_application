import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/core/typedefs/json_map.dart';

part 'course_response_dto.freezed.dart';
part 'course_response_dto.g.dart';

@freezed
abstract class CourseResponseDto with _$CourseResponseDto {
  const factory CourseResponseDto({
    required String name,
    required String address,
    required List<String> images,
    required String description,
    @JsonKey(name: "is_favorite") required bool isFavorite,
  }) = _CourseResponseDto;

  factory CourseResponseDto.fromJson(JsonMap json) =>
      _$CourseResponseDtoFromJson(json);
}
