import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solid_test/pages/splash/splash_screen.dart';
import 'package:solid_test/routes/route_generator.dart';


///Start program
class Launcher extends StatelessWidget {
  ///Base constructor
  const Launcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //top bar color
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
