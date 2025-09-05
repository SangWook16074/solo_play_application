import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/features/course/data/dtos/course_response_dto.dart';

final class CourseEntity extends Equatable {
  final String name;
  final String address;
  final List<String> images;
  final String description;
  final bool isFavorite;

  const CourseEntity({
    required this.name,
    required this.address,
    required this.images,
    required this.description,
    required this.isFavorite,
  });

  factory CourseEntity.fromResponse(CourseResponseDto dto) {
    return CourseEntity(
      name: dto.name,
      address: dto.address,
      images: dto.images,
      description: dto.description,
      isFavorite: dto.isFavorite,
    );
  }

  @override
  List<Object?> get props => [
        name,
        address,
        images,
        description,
      ];
}
