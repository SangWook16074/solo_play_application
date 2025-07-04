import 'package:dio/dio.dart';
import 'package:solo_play_application/src/features/rank/data/dtos/place_response_dto.dart';

final class PlaceApiServicesImpl implements PlaceApiSerivces {
  final Dio dio;

  PlaceApiServicesImpl({required this.dio});

  @override
  Future<List<PlaceResponseDto>> fetchData() async {
    await Future.delayed(Duration(seconds: 1));
    final data = [
      {
        "name": "mwm",
        "address": "서울 용산구 한강대로 15길 19-19 3층",
        "is_favorite": false,
        "images": [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s"
        ],
        "description":
            "mwm은 카페와 스튜디오를 같이 운영합니다. 커피음료와 간단한 디저트들이 준비되어있고 mwm에서 제작한 그릇들도 구입 가능합니다.",
      },
      {
        "name": "mwm",
        "address": "서울 용산구 한강대로 15길 19-19 3층",
        "is_favorite": false,
        "images": [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s"
        ],
        "description":
            "mwm은 카페와 스튜디오를 같이 운영합니다. 커피음료와 간단한 디저트들이 준비되어있고 mwm에서 제작한 그릇들도 구입 가능합니다.",
      },
      {
        "name": "mwm",
        "address": "서울 용산구 한강대로 15길 19-19 3층",
        "is_favorite": false,
        "images": [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s"
        ],
        "description":
            "mwm은 카페와 스튜디오를 같이 운영합니다. 커피음료와 간단한 디저트들이 준비되어있고 mwm에서 제작한 그릇들도 구입 가능합니다.",
      },
      {
        "name": "mwm",
        "address": "서울 용산구 한강대로 15길 19-19 3층",
        "is_favorite": false,
        "images": [
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB_yu37kUWSHF1UgliWy5TmISMFBStwbR9pw&s"
        ],
        "description":
            "mwm은 카페와 스튜디오를 같이 운영합니다. 커피음료와 간단한 디저트들이 준비되어있고 mwm에서 제작한 그릇들도 구입 가능합니다.",
      },
    ];
    return data.map((json) => PlaceResponseDto.fromJson(json)).toList();
  }
}

abstract class PlaceApiSerivces {
  Future<List<PlaceResponseDto>> fetchData();
}
