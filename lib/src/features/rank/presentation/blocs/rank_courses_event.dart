import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/core/data/models/course_model.dart';

sealed class RankCoursesEvent extends Equatable {}

final class FetchInitialDatas extends RankCoursesEvent {
  @override
  List<Object?> get props => [];
}

final class UserCourseFavoriteChanged extends RankCoursesEvent {
  final CourseModel course;

  UserCourseFavoriteChanged({required this.course});
  @override
  List<Object?> get props => [course];
}
