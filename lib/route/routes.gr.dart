// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../first_page.dart' as _i2;
import '../home_page.dart' as _i1;
import '../login/login_page.dart' as _i5;
import '../PageModel.dart' as _i9;
import '../second_page.dart' as _i3;
import '../third_page.dart' as _i4;
import 'routes.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter(
      {_i7.GlobalKey<_i7.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i8.AuthGuard authGuard;

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    FirstRoute.name: (routeData) {
      final args = routeData.argsAs<FirstRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.FirstPage(key: args.key, pageModel: args.pageModel));
    },
    SecondRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SecondPage());
    },
    ThirdRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ThirdPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.LoginPage(
              key: args.key, successCallback: args.successCallback),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeRoute.name, path: '/'),
        _i6.RouteConfig(FirstRoute.name, path: '/first-page'),
        _i6.RouteConfig(SecondRoute.name, path: '/second-page'),
        _i6.RouteConfig(ThirdRoute.name,
            path: '/third-page', guards: [authGuard]),
        _i6.RouteConfig(LoginRoute.name, path: '/login-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.FirstPage]
class FirstRoute extends _i6.PageRouteInfo<FirstRouteArgs> {
  FirstRoute({_i7.Key? key, required _i9.PageModel pageModel})
      : super(FirstRoute.name,
            path: '/first-page',
            args: FirstRouteArgs(key: key, pageModel: pageModel));

  static const String name = 'FirstRoute';
}

class FirstRouteArgs {
  const FirstRouteArgs({this.key, required this.pageModel});

  final _i7.Key? key;

  final _i9.PageModel pageModel;

  @override
  String toString() {
    return 'FirstRouteArgs{key: $key, pageModel: $pageModel}';
  }
}

/// generated route for
/// [_i3.SecondPage]
class SecondRoute extends _i6.PageRouteInfo<void> {
  const SecondRoute() : super(SecondRoute.name, path: '/second-page');

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i4.ThirdPage]
class ThirdRoute extends _i6.PageRouteInfo<void> {
  const ThirdRoute() : super(ThirdRoute.name, path: '/third-page');

  static const String name = 'ThirdRoute';
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i7.Key? key, required dynamic Function(bool) successCallback})
      : super(LoginRoute.name,
            path: '/login-page',
            args: LoginRouteArgs(key: key, successCallback: successCallback));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.successCallback});

  final _i7.Key? key;

  final dynamic Function(bool) successCallback;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, successCallback: $successCallback}';
  }
}
