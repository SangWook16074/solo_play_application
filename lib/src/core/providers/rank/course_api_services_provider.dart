import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/data/datasources/remote/course_api_services.dart';

final courseApiServicesProvider = RepositoryProvider<CourseApiServices>(
    create: (context) => CourseApiServicesImpl());
