import 'package:flutter/material.dart';
import 'package:solid_test/pages/main/main_screen.dart';
import 'package:solid_test/resources/app_image.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

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
    return Scaffold(
      body: Center(
        child: Image(
          image: AppImage.testLogo,
        ),
      ),
    );
  }
}
