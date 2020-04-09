import 'package:flutter/material.dart';

import 'argument_keys.dart';
import 'pages/red_page.dart';
import 'pages/blue_page.dart';
import 'pages/green_page.dart';
import 'pages/login_page.dart';
import 'pages/create_page.dart';
import 'pages/account_page.dart';
import 'pages/list_page.dart';
import 'pages/history_page.dart';

class Routes {
  Routes._();

  static const root = '/';
  static const red = '/red';
  static const blue = '/blue';
  static const green = '/green';
  static const login = '/login';
  static const create = '/create';
  static const account = '/account';
  static const list = '/list';
  static const history = '/history';

  static MaterialPageRoute generateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (context) => _buildPage(routeSettings.name, routeSettings.arguments),
    );
  }

  static Widget _buildPage(String name, Object arguments) {
    Map<String, dynamic> argumentsMap = arguments is Map<String, dynamic> ? arguments : Map();
    switch (name) {
      case blue:
        return BluePage(
          value: arguments ?? 0,
        );
      case red:
        return RedPage(
          value: argumentsMap[ArgumentKeys.value] ?? 0,
        );
      case green:
        return GreenPage(
          value: argumentsMap[ArgumentKeys.value] ?? 0,
        );
      case login:
        return LoginPage(
          value: argumentsMap[ArgumentKeys.value] ?? 0,
        );
      case create:
        return CreatePage(
          value: argumentsMap[ArgumentKeys.value] ?? 0,
        );
      case account:
        return AccountPage(
          value: argumentsMap[ArgumentKeys.value] ?? 0,
        );
      case list:
        return ListPage(
          value: argumentsMap[ArgumentKeys.value] ?? 0,
        );
      case history:
        return HistoryPage(
          value: argumentsMap[ArgumentKeys.value] ?? 0,
        );
      default:
        return Container();
    }
  }
}
