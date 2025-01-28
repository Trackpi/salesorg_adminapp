import 'package:flutter/material.dart';
import '../view/home_page/navigation_screen.dart';

class Approutes {
  static const String navScreen = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case navScreen:
        return MaterialPageRoute(builder: (_) => NavigationScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
