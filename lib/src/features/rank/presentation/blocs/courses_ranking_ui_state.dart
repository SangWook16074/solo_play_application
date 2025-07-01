import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/features/rank/data/models/course_model.dart';

sealed class CoursesRankingState extends Equatable {}

final class InitState extends CoursesRankingState {
  @override
  List<Object?> get props => [];
}

final class LoadingState extends CoursesRankingState {
  @override
  List<Object?> get props => [];
}

final class LoadedState extends CoursesRankingState {
  final List<CourseModel> courses;

  LoadedState({required this.courses});
  @override
  List<Object?> get props => [courses];
}

final class ErrorState extends CoursesRankingState {
  final String error;

  ErrorState({required this.error});
  @override
  List<Object?> get props => [error];
}
