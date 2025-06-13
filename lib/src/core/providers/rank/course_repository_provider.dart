import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/data/datasources/remote/course_api_services.dart';
import 'package:solo_play_application/src/core/domain/repositories/course_repository.dart';

final courseRepositoryProvider = RepositoryProvider<CourseRepository>(
    create: (context) => CourseRepositoryImpl(
        courseApiService: context.read<CourseApiServices>()));
