// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../pages/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    OtherRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.OtherPage());
    },
    HomeTabRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    OtherTabRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.OtherPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(MainRoute.name, path: '/', children: [
          _i2.RouteConfig(HomeTabRouter.name,
              path: 'home-page', parent: MainRoute.name),
          _i2.RouteConfig(OtherTabRouter.name,
              path: 'other-page', parent: MainRoute.name)
        ]),
        _i2.RouteConfig(OtherRoute.name, path: '/other-page')
      ];
}

/// generated route for [_i1.MainPage]
class MainRoute extends _i2.PageRouteInfo<void> {
  const MainRoute({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for [_i1.OtherPage]
class OtherRoute extends _i2.PageRouteInfo<void> {
  const OtherRoute() : super(name, path: '/other-page');

  static const String name = 'OtherRoute';
}

/// generated route for [_i1.HomePage]
class HomeTabRouter extends _i2.PageRouteInfo<void> {
  const HomeTabRouter() : super(name, path: 'home-page');

  static const String name = 'HomeTabRouter';
}

/// generated route for [_i1.OtherPage]
class OtherTabRouter extends _i2.PageRouteInfo<void> {
  const OtherTabRouter() : super(name, path: 'other-page');

  static const String name = 'OtherTabRouter';
}
