import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_app_playground/views/bar_view.dart';
import 'package:simple_app_playground/views/cat_view.dart';
import 'package:simple_app_playground/views/dog_view.dart';
import 'package:simple_app_playground/views/foo_view.dart';
import 'package:simple_app_playground/views/home_view.dart';
import 'package:simple_app_playground/views/house_cat_view.dart';
import 'package:simple_app_playground/views/wild_cat_View.dart';

import '../data/cats.dart';
import '../data/dogs.dart';
import '../views/simple_view.dart';

part 'routes.g.dart';

GoRouter getRouter() {
  return GoRouter(
    routes: $appRoutes,
    initialLocation: '/foo',
    navigatorKey: rootNavigatorKey,
  );
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<HomeRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<FooRouteData>(path: '/foo', routes: [
      TypedGoRoute<SimpleViewRouteData>(path: 'simple'),
      TypedGoRoute<DogPageRouteData>(path: 'dog'),
      TypedGoRoute<DogPageRouteDataAlt>(path: 'dogAlt'),
    ]),
    TypedGoRoute<BarRouteData>(path: '/bar', routes: [
      TypedGoRoute<CatViewRouteData>(path: 'cat', routes: [
        TypedGoRoute<WildCatViewRouteData>(path: 'wild'),
        TypedGoRoute<HouseCatViewRouteData>(path: 'house'),
      ]),
    ]),
  ],
)
class HomeRouteData extends ShellRouteData {
  const HomeRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return HomeView(child: navigator);
  }
}

class FooRouteData extends GoRouteData {
  const FooRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FooView();
  }
}

class BarRouteData extends GoRouteData {
  const BarRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BarView();
  }
}

class SimpleViewRouteData extends GoRouteData {
  final int A;
  final int B;
  const SimpleViewRouteData({required this.A, required this.B});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SimpleView(numberA: A, numberB: B);
  }
}

class DogPageRouteData extends GoRouteData {
  final String dogName;
  final String dogBreed;
  final int dogAge;
  const DogPageRouteData({
    required this.dogName,
    required this.dogBreed,
    required this.dogAge,
  });

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      shellNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    Dog dog = Dog(
      name: dogName,
      breed: dogBreed,
      age: dogAge,
    );
    return DogView(
      dog: dog,
    );
  }
}

class DogPageRouteDataAlt extends GoRouteData {
  final Dog $extra;
  const DogPageRouteDataAlt({required this.$extra});

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DogView(
      dog: $extra,
    );
  }
}

class CatViewRouteData extends GoRouteData {
  final String catName;
  final String catBreed;
  final int catAge;

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  const CatViewRouteData(
      {required this.catName, required this.catBreed, required this.catAge});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    Cat awesomeCat = Cat(
      name: catName,
      breed: catBreed,
      age: catAge,
    );
    return CatView(cat: awesomeCat);
  }
}

class WildCatViewRouteData extends GoRouteData {
  final String habitat;
  final String catName;
  final String catBreed;
  final int catAge;

  const WildCatViewRouteData({
    required this.habitat,
    required this.catName,
    required this.catBreed,
    required this.catAge,
  });

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    WildCat myWildCat = WildCat(
      name: catName,
      breed: catBreed,
      age: catAge,
      habitat: habitat,
    );
    return WildCatView(wildCat: myWildCat);
  }
}

class HouseCatViewRouteData extends GoRouteData {
  final String catName;
  final String catBreed;
  final int catAge;
  final String ownerName;
  final String ownerAddress;
  const HouseCatViewRouteData({
    required this.catName,
    required this.catBreed,
    required this.catAge,
    required this.ownerName,
    required this.ownerAddress,
  });

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    HouseCat myHouseCat = HouseCat(
      name: catName,
      breed: catBreed,
      age: catAge,
      ownerName: ownerName,
      ownerAddress: ownerAddress,
    );
    return HouseCatView(houseCat: myHouseCat);
  }
}
