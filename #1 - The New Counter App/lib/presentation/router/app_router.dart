import 'package:bloc_architecture_app/presentation/screens/counter_screen/counter_screen.dart';
import 'package:flutter/material.dart';

import '../../core/exceptions/route_exception.dart';

class AppRouter {
  static const String counter = 'counter';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case counter:
        return MaterialPageRoute(
          builder: (_) => CounterScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
