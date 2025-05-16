import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/presentation/course/models/region.dart';
import 'package:solo_play_application/src/presentation/course/page/region_detail_page.dart';

part 'go_router_builder.g.dart';

@TypedGoRoute<RegionDetailRoute>(path: '/detail/:region')
@immutable
class RegionDetailRoute extends GoRouteData {
  final Region region;

  const RegionDetailRoute({required this.region});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RegionDetailPage(region: region);
  }
}
