import 'package:solo_play_application/src/features/place/domain/entities/parent_category.dart';

enum PlaceCategory {
  // Relax / Leisure
  cafe(ParentCategory.relaxLeisure, "카페 (브런치 카페, 디저트 카페, 북카페 등)"),
  park(ParentCategory.relaxLeisure, "공원 / 산책로"),
  spa(ParentCategory.relaxLeisure, "스파 / 찜질방 / 온천"),
  library(ParentCategory.relaxLeisure, "도서관 / 독서실"),

  // Culture / Art
  cinema(ParentCategory.cultureArt, "영화관"),
  museum(ParentCategory.cultureArt, "미술관 / 박물관 / 전시회"),
  theater(ParentCategory.cultureArt, "공연장 (연극, 뮤지컬, 콘서트)"),
  bookstore(ParentCategory.cultureArt, "독립서점 / 북클럽"),

  // Activity / Experience
  sports(ParentCategory.activityExperience, "스포츠 (헬스장, 클라이밍, 볼링, 탁구, 스크린 골프)"),
  vrAr(ParentCategory.activityExperience, "VR/AR 체험"),
  escapeRoom(ParentCategory.activityExperience, "방탈출 / 보드게임 카페 (솔로 가능 버전)"),
  workshop(ParentCategory.activityExperience, "요리/공방 클래스 (도예, 캔들, 베이킹 등)"),

  // Travel / Exploration
  nearTrip(ParentCategory.travelExploration, "근교 여행 (산, 바다, 캠핑장)"),
  cityTour(ParentCategory.travelExploration, "도심 투어 (전통시장, 랜드마크, 테마 거리)"),
  soloStay(ParentCategory.travelExploration, "혼자 가는 숙소 (게스트하우스, 1인 호텔룸)"),

  // Gourmet / Food
  soloRestaurant(ParentCategory.gourmetFood, "1인 전문 식당 (라멘, 고기, 백반집)"),
  dessertCafe(ParentCategory.gourmetFood, "디저트 카페"),
  streetFood(ParentCategory.gourmetFood, "길거리 음식 / 야시장"),
  fineDining(ParentCategory.gourmetFood, "파인다이닝 (혼자 도전용)"),

  // Healing / Self Improvement
  yogaMeditation(ParentCategory.healingSelfImprovement, "요가 / 명상 센터"),
  oneDayClass(ParentCategory.healingSelfImprovement, "원데이 클래스 (그림, 글쓰기, 음악)"),
  studyCafe(ParentCategory.healingSelfImprovement, "북카페 / 스터디룸"),
  counseling(ParentCategory.healingSelfImprovement, "상담/코칭 프로그램"),

  // Special Experience
  themePark(ParentCategory.specialExperience, "놀이공원 / 테마파크"),
  karaoke(ParentCategory.specialExperience, "노래방 (1인 노래방 포함)"),
  overseasTravel(ParentCategory.specialExperience, "여행/해외여행"),
  fullCourseMeal(ParentCategory.specialExperience, "레스토랑 풀코스");

  final ParentCategory parent;
  final String desc;
  const PlaceCategory(this.parent, this.desc);
}
