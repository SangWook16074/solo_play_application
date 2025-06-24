import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/rank/data/models/place_model.dart';
import 'package:solo_play_application/src/features/rank/domain/repositories/place_repository.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/place_ranking_event.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/place_ranking_state.dart';

class PlaceRankingBloc extends Bloc<PlaceRankingEvent, PlaceRankingState> {
  final PlaceRepository placeRepository;
  PlaceRankingBloc({
    required this.placeRepository,
  }) : super(Loading()) {
    on<FetchData>(_fetchData);
  }

  void _fetchData(FetchData event, Emitter<PlaceRankingState> emit) async {
    try {
      final response = await placeRepository.fetchData();
      emit(Loaded(
          places: response
              .map((entity) => PlaceModel.fromEntity(entity))
              .toList()));
    } catch (e) {
      emit(Error(error: e.toString()));
    }
  }
}
