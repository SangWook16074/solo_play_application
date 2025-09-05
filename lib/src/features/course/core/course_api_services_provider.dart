import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/course/data/datasources/reomote/course_api_services.dart';

final courseApiServicesProvider = RepositoryProvider<CourseApiServices>(
    create: (context) => CourseApiServicesImpl(dio: context.read<Dio>()));
