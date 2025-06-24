import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/rank/data/datasources/remote/place_api_serivces.dart';

final placeApiSerivcesProvider = RepositoryProvider<PlaceApiSerivces>(
    create: (context) => PlaceApiServicesImpl(dio: Dio()));
