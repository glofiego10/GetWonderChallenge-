// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../auth/page_login.dart' as _i2;
import '../../home/page_home.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RouteHome.name: (routeData) {
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.PageHome(),
        transitionsBuilder: _i3.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RouteLogin.name: (routeData) {
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.PageLogin(),
        transitionsBuilder: _i3.TransitionsBuilders.slideBottom,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          RouteHome.name,
          path: '/page-home',
        ),
        _i3.RouteConfig(
          RouteLogin.name,
          path: '/page-login',
        ),
      ];
}

/// generated route for
/// [_i1.PageHome]
class RouteHome extends _i3.PageRouteInfo<void> {
  const RouteHome()
      : super(
          RouteHome.name,
          path: '/page-home',
        );

  static const String name = 'RouteHome';
}

/// generated route for
/// [_i2.PageLogin]
class RouteLogin extends _i3.PageRouteInfo<void> {
  const RouteLogin()
      : super(
          RouteLogin.name,
          path: '/page-login',
        );

  static const String name = 'RouteLogin';
}
