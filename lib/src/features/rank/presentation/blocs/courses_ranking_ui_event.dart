import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/features/rank/data/models/course_model.dart';

sealed class CoursesRankingEvent extends Equatable {}

final class FetchInitialDatas extends CoursesRankingEvent {
  @override
  List<Object?> get props => [];
}

final class UserCourseFavoriteChanged extends CoursesRankingEvent {
  final CourseModel course;

  UserCourseFavoriteChanged({required this.course});
  @override
  List<Object?> get props => [course];
}
