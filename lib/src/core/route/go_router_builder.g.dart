// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router_builder.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $regionDetailRoute,
    ];

RouteBase get $regionDetailRoute => GoRouteData.$route(
      path: '/detail/:region',
      factory: $RegionDetailRouteExtension._fromState,
    );

extension $RegionDetailRouteExtension on RegionDetailRoute {
  static RegionDetailRoute _fromState(GoRouterState state) => RegionDetailRoute(
        region: _$RegionEnumMap._$fromName(state.pathParameters['region']!),
      );

  String get location => GoRouteData.$location(
        '/detail/${Uri.encodeComponent(_$RegionEnumMap[region]!)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$RegionEnumMap = {
  Region.gangbuk: 'gangbuk',
  Region.dosim: 'dosim',
  Region.dongseoul: 'dongseoul',
  Region.seonam: 'seonam',
  Region.namseoul: 'namseoul',
  Region.gangnam: 'gangnam',
  Region.dongnam: 'dongnam',
};

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
