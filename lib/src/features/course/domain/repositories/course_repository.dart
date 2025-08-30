import 'package:solo_play_application/src/features/course/data/datasources/reomote/course_api_services.dart';
import 'package:solo_play_application/src/features/course/domain/entities/course_entity.dart';

final class CourseRepositoryImpl implements CourseRepository {
  final CourseApiServices courseApiService;
  CourseRepositoryImpl({
    required this.courseApiService,
  });

  @override
  Future<List<CourseEntity>> getHotPlaces() async {
    final responses = await courseApiService.getHotPlaces();
    return responses
        .map((response) => CourseEntity.fromResponse(response))
        .toList();
  }
}

abstract class CourseRepository {
  Future<List<CourseEntity>> getHotPlaces();
}
