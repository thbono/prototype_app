// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screen/associated/associated_screen.dart';
import '../screen/register/register_screen.dart';

class Routes {
  static const String associatedScreen = '/';
  static const String registerScreen = '/register-screen';
  static const all = <String>{
    associatedScreen,
    registerScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.associatedScreen, page: AssociatedScreen),
    RouteDef(Routes.registerScreen, page: RegisterScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    AssociatedScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AssociatedScreen(),
        settings: data,
      );
    },
    RegisterScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushAssociatedScreen() =>
      push<dynamic>(Routes.associatedScreen);

  Future<dynamic> pushRegisterScreen() => push<dynamic>(Routes.registerScreen);
}
