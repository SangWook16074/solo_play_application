import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/rank/data/datasources/remote/place_api_serivces.dart';
import 'package:solo_play_application/src/features/rank/domain/repositories/place_repository.dart';

final placeRepositoryProvider = RepositoryProvider<PlaceRepository>(
    create: (context) => PlaceRepositoryImpl(
        placeApiSerivces: context.read<PlaceApiSerivces>()));
