// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRouteData,
    ];

RouteBase get $homeRouteData => ShellRouteData.$route(
      navigatorKey: HomeRouteData.$navigatorKey,
      factory: $HomeRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/foo',
          factory: $FooRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'simple',
              factory: $SimpleViewRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'dog',
              parentNavigatorKey: DogPageRouteData.$parentNavigatorKey,
              factory: $DogPageRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'dogAlt',
              parentNavigatorKey: DogPageRouteDataAlt.$parentNavigatorKey,
              factory: $DogPageRouteDataAltExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/bar',
          factory: $BarRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'cat',
              parentNavigatorKey: CatViewRouteData.$parentNavigatorKey,
              factory: $CatViewRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'wild',
                  parentNavigatorKey: WildCatViewRouteData.$parentNavigatorKey,
                  factory: $WildCatViewRouteDataExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'house',
                  parentNavigatorKey: HouseCatViewRouteData.$parentNavigatorKey,
                  factory: $HouseCatViewRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $HomeRouteDataExtension on HomeRouteData {
  static HomeRouteData _fromState(GoRouterState state) => const HomeRouteData();
}

extension $FooRouteDataExtension on FooRouteData {
  static FooRouteData _fromState(GoRouterState state) => const FooRouteData();

  String get location => GoRouteData.$location(
        '/foo',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SimpleViewRouteDataExtension on SimpleViewRouteData {
  static SimpleViewRouteData _fromState(GoRouterState state) =>
      SimpleViewRouteData(
        A: int.parse(state.uri.queryParameters['a']!),
        B: int.parse(state.uri.queryParameters['b']!),
      );

  String get location => GoRouteData.$location(
        '/foo/simple',
        queryParams: {
          'a': A.toString(),
          'b': B.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DogPageRouteDataExtension on DogPageRouteData {
  static DogPageRouteData _fromState(GoRouterState state) => DogPageRouteData(
        dogName: state.uri.queryParameters['dog-name']!,
        dogBreed: state.uri.queryParameters['dog-breed']!,
        dogAge: int.parse(state.uri.queryParameters['dog-age']!),
      );

  String get location => GoRouteData.$location(
        '/foo/dog',
        queryParams: {
          'dog-name': dogName,
          'dog-breed': dogBreed,
          'dog-age': dogAge.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DogPageRouteDataAltExtension on DogPageRouteDataAlt {
  static DogPageRouteDataAlt _fromState(GoRouterState state) =>
      DogPageRouteDataAlt(
        $extra: state.extra as Dog,
      );

  String get location => GoRouteData.$location(
        '/foo/dogAlt',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $BarRouteDataExtension on BarRouteData {
  static BarRouteData _fromState(GoRouterState state) => const BarRouteData();

  String get location => GoRouteData.$location(
        '/bar',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CatViewRouteDataExtension on CatViewRouteData {
  static CatViewRouteData _fromState(GoRouterState state) => CatViewRouteData(
        catName: state.uri.queryParameters['cat-name']!,
        catBreed: state.uri.queryParameters['cat-breed']!,
        catAge: int.parse(state.uri.queryParameters['cat-age']!),
      );

  String get location => GoRouteData.$location(
        '/bar/cat',
        queryParams: {
          'cat-name': catName,
          'cat-breed': catBreed,
          'cat-age': catAge.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WildCatViewRouteDataExtension on WildCatViewRouteData {
  static WildCatViewRouteData _fromState(GoRouterState state) =>
      WildCatViewRouteData(
        habitat: state.uri.queryParameters['habitat']!,
        catName: state.uri.queryParameters['cat-name']!,
        catBreed: state.uri.queryParameters['cat-breed']!,
        catAge: int.parse(state.uri.queryParameters['cat-age']!),
      );

  String get location => GoRouteData.$location(
        '/bar/cat/wild',
        queryParams: {
          'habitat': habitat,
          'cat-name': catName,
          'cat-breed': catBreed,
          'cat-age': catAge.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HouseCatViewRouteDataExtension on HouseCatViewRouteData {
  static HouseCatViewRouteData _fromState(GoRouterState state) =>
      HouseCatViewRouteData(
        catName: state.uri.queryParameters['cat-name']!,
        catBreed: state.uri.queryParameters['cat-breed']!,
        catAge: int.parse(state.uri.queryParameters['cat-age']!),
        ownerName: state.uri.queryParameters['owner-name']!,
        ownerAddress: state.uri.queryParameters['owner-address']!,
      );

  String get location => GoRouteData.$location(
        '/bar/cat/house',
        queryParams: {
          'cat-name': catName,
          'cat-breed': catBreed,
          'cat-age': catAge.toString(),
          'owner-name': ownerName,
          'owner-address': ownerAddress,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
