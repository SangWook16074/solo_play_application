import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

final dioProvider = Provider<Dio>(create: (context) => Dio());
