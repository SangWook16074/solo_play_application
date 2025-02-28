import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/presentation/user/view/my_profile_view.dart';

void main() {
  late final MaterialApp widget;

  group("My Profile View UI Test", () {
    setUpAll(() {
      widget = const MaterialApp(
        home: MyProfileView(),
      );
    });
  });
}
