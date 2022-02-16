import 'package:flutter/material.dart';
import 'package:solid_test/pages/main/main_screen.dart';
import 'package:solid_test/pages/splash/splash_screen.dart';

///Nested navigator
class RouteGenerator {
  ///Nested navigator
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute<Widget>(
          builder: (context) => const SplashScreen(),
        );
      case MainScreen.routeName:
        return MaterialPageRoute<Widget>(
          builder: (context) => const MainScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<Widget>(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("ERROR"),
            centerTitle: true,
          ),
          body: const Center(
            child: Text("PAGE NOT FOUND!"),
          ),
        );
      },
    );
  }
}
