import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/course/cubits/region_detail_view_state.dart';
import 'package:solo_play_application/src/features/course/cubits/region.dart';

class RegionDetailCubit extends Cubit<RegionDetailViewState> {
  RegionDetailCubit(super.initialState);

  void moveTo(Region region) {
    final nextState = state.copyWith(region: region);
    emit(nextState);
  }
}
