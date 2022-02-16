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

  void startDiscoShow() {
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
          setState(() {
            _color = _helper.generateColor();
          });
        },
        onDoubleTap: () {
          startDiscoShow();
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
