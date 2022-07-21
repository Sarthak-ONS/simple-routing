import 'package:flutter/material.dart';

import 'package:simple_routing/Screens/screen_one.dart';
import 'package:simple_routing/Screens/screen_two.dart';
import 'package:simple_routing/Screens/screen_third.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Screen1());
      case '/second':
        return MaterialPageRoute(builder: (_) => const Screen2());
      case '/third':
        return MaterialPageRoute(builder: (_) => const Screen3());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Please try again later'),
        ),
      ),
    );
  }
}
