import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/features/rank/data/models/course_model.dart';

sealed class CoursesRankingUiEvent extends Equatable {}

final class FetchInitialDatas extends CoursesRankingUiEvent {
  @override
  List<Object?> get props => [];
}

final class UserCourseFavoriteChanged extends CoursesRankingUiEvent {
  final CourseModel course;

  UserCourseFavoriteChanged({required this.course});
  @override
  List<Object?> get props => [course];
}
