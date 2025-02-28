import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/providers/app/app_bloc_providers.dart';
import 'package:solo_play_application/src/presentation/app/view/app_view.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: appBlocProvider,
      child: const AppView(),
    );
  }
}
