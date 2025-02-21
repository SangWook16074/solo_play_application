import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/presentation/app/cubit/bottom_nav_cubit.dart';
import 'package:solo_play_application/src/presentation/app/view/app_view.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: const AppView(),
    );
  }
}
