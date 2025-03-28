import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum PageType { home, rank, add, post, mypage }

class BottomNavCubit extends Cubit<PageType> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get key => _navigatorKey;
  BottomNavCubit() : super(PageType.home);

  void changeIndex(int index) {
    final PageType page = PageType.values[index];
    emit(page);
  }

  @override
  void onChange(Change<PageType> change) {
    super.onChange(change);
    debugPrint(
        "curr BottomNav State: ${change.currentState}\nnext BottomNav State ${change.nextState}");
  }
}
