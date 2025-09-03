import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/auth/presentation/resister_password/sections/sections.dart';

class ResisterPasswordUI extends StatelessWidget {
  const ResisterPasswordUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 62.0, horizontal: 16.0),
        child: SafeArea(
          bottom: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResisterPasswordHeader(),
                  SizedBox(height: 48),
                  ResisterPasswordInputTextField(),
                  SizedBox(height: 4),
                ],
              ),
              ResisterPasswordButtonView(),
            ],
          ),
        ),
      ),
    );
  }
}
