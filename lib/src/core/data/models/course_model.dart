import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/core/domain/entities/course_entity.dart';

part 'course_model.freezed.dart';

@freezed
abstract class CourseModel with _$CourseModel {
  const factory CourseModel({
    required String name,
    required String address,
    required List<String> images,
    required String description,
    required bool isFavorite,
  }) = _CourseModel;

  const CourseModel._();

  factory CourseModel.fromEntity(CourseEntity entity) {
    return CourseModel(
        name: entity.name,
        address: entity.address,
        images: entity.images,
        description: entity.description,
        isFavorite: entity.isFavorite);
  }

  String get addressSummary {
    final address = this.address.split(" ").toList();
    final city = address.first;
    final province = address[1];
    return "$city $province";
  }
}
