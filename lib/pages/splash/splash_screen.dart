import 'package:flutter/material.dart';
import 'package:solid_test/pages/main/main_screen.dart';
import 'package:solid_test/resources/app_image.dart';

///Splash screen for program
class SplashScreen extends StatelessWidget {
  ///Route name for nested navigation

  static const String routeName = '/splash';

  ///Constant constructor

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, MainScreen.routeName);
        // Navigator.pushNamed(context, RegistrationScreen.routeName);
      },
    );

    return const Scaffold(
      body: Center(
        child: Image(
          image: AppImage.testLogo,
        ),
      ),
    );
  }
}
