import 'dart:async';

import 'package:flutter/material.dart';
import 'package:solid_test/services/color_helper.dart';

///Main screen
class MainScreen extends StatefulWidget {
  ///Route name for nested navigation
  static const String routeName = '/main';

  ///Constant constructor
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ColorHelper _helper = ColorHelper();

  Color _color = Colors.white;

  ///Creating new color
  void generateNewColor() {
    setState(() {
      _color = _helper.generateColor();
    });
  }

  ///Change color 5 times ( based on Timer )
  void changeColorAutomatically() {
    int count = 5;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _color = _helper.generateColor();
      });
      count--;
      if (count == 0) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          generateNewColor();
        },
        onDoubleTap: () {
          changeColorAutomatically();
        },
        child: const Center(
          child: Text(
            "Hey there",
          ),
        ),
      ),
    );
  }
}
