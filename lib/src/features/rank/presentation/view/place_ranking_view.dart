import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:solo_play_application/src/features/rank/data/models/place_model.dart';
import 'package:solo_play_application/src/features/rank/presentation/blocs/place_ranking_bloc.dart';
import 'package:solo_play_application/src/features/rank/presentation/pages/best_place_card_widget_page.dart';

class PlaceRankingView extends HookWidget {
  const PlaceRankingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final state = context.watch<PlaceRankingBloc>().state;

    return state.when(loading: () {
      return Container();
    }, loaded: (List<PlaceModel> places) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 16.0, top: 4.0, bottom: 4.0),
            child: Text(
              "tip. 더 자세한 정보는 카드를 옆으로 넘겨보세요->",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff666666),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              padEnds: false,
              controller: controller,
              itemCount: 10,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final place = places[index];
                return Align(
                  alignment: Alignment.topCenter,
                  child: BestPlaceCardWidgetPage(
                    place: place,
                    rank: index + 1,
                    showHeader: true,
                  ),
                );
              },
            ),
          ),
        ],
      );
    }, error: (String error) {
      return Container();
    });
  }
}
