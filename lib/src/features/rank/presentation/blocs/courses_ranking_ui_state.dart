import 'package:equatable/equatable.dart';
import 'package:solo_play_application/src/features/rank/data/models/course_model.dart';

sealed class CoursesRankingUiState extends Equatable {}

final class InitState extends CoursesRankingUiState {
  @override
  List<Object?> get props => [];
}

final class LoadingState extends CoursesRankingUiState {
  @override
  List<Object?> get props => [];
}

final class LoadedState extends CoursesRankingUiState {
  final List<CourseModel> courses;

  LoadedState({required this.courses});
  @override
  List<Object?> get props => [courses];
}

final class ErrorState extends CoursesRankingUiState {
  final String error;

  ErrorState({required this.error});
  @override
  List<Object?> get props => [error];
}
