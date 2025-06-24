import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_ranking_event.freezed.dart';

@freezed
sealed class PlaceRankingEvent with _$PlaceRankingEvent {
  const factory PlaceRankingEvent.fetchData() = FetchData;
  const factory PlaceRankingEvent() = _PlaceRankingEvent;
}
