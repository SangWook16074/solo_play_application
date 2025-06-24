import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/rank/data/datasources/remote/course_api_services.dart';
import 'package:solo_play_application/src/features/rank/domain/repositories/course_repository.dart';

final courseRepositoryProvider = RepositoryProvider<CourseRepository>(
    create: (context) => CourseRepositoryImpl(
        courseApiService: context.read<CourseApiServices>()));
