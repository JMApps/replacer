import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:replacer/pages/main_page.dart';

class AppRouter {
  Route appGeneratorRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => const MainPage(), settings: routeSettings);
      default:
        throw Exception('Invalid route');
    }
  }
}
