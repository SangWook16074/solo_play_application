import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/core/data/models/course_model.dart';

sealed class RankCoursesState extends Equatable {}

final class InitState extends RankCoursesState {
  @override
  List<Object?> get props => [];
}

final class LoadingState extends RankCoursesState {
  @override
  List<Object?> get props => [];
}

final class LoadedState extends RankCoursesState {
  final List<CourseModel> courses;

  LoadedState({required this.courses});
  @override
  List<Object?> get props => [courses];
}

final class ErrorState extends RankCoursesState {
  final String error;

  ErrorState({required this.error});
  @override
  List<Object?> get props => [error];
}
