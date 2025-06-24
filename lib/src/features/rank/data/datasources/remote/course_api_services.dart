import 'package:solo_play_application/src/core/data/dtos/course_response_dto.dart';
import 'package:solo_play_application/src/core/domain/entities/course_entity.dart';

final class CourseApiServicesImpl implements CourseApiServices {
  @override
  Future<List<CourseResponseDto>> getHotPlaces() async {
    await Future.delayed(Duration(seconds: 1));
    final data = [
      {
        "name": "첫번째 장소",
        "address": "서울 강북구 한상욱로 13길 1층",
        "is_favorite": false,
        "images": [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s"
        ],
        "description": "여기는 개쩌는 장소임 ㅋㅋㅋㅋㅋㅋㅋㅋ",
      },
      {
        "name": "첫번째 장소",
        "address": "서울 강북구 한상욱로 13길 1층",
        "is_favorite": false,
        "images": [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s"
        ],
        "description": "여기는 개쩌는 장소임 ㅋㅋㅋㅋㅋㅋㅋㅋ",
      },
      {
        "name": "첫번째 장소",
        "address": "서울 강북구 한상욱로 13길 1층",
        "is_favorite": false,
        "images": [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s"
        ],
        "description": "여기는 개쩌는 장소임 ㅋㅋㅋㅋㅋㅋㅋㅋ",
      },
      {
        "name": "첫번째 장소",
        "address": "서울 강북구 한상욱로 13길 1층",
        "is_favorite": false,
        "images": [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s"
        ],
        "description": "여기는 개쩌는 장소임 ㅋㅋㅋㅋㅋㅋㅋㅋ",
      },
    ];
    return data.map((json) => CourseResponseDto.fromJson(json)).toList();
  }
}

abstract class CourseApiServices {
  Future<List<CourseResponseDto>> getHotPlaces();
}
