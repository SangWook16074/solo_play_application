import 'package:flutter/material.dart';
import 'package:solo_play_application/src/views/app_view.dart';
import 'package:solo_play_application/src/views/my_profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AppView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
