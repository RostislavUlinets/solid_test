import 'dart:math';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const String routeName = '/main';

  MainScreen({Key? key}) : super(key: key);

  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Text(
            "Hey there",
            style: TextStyle(
              color: Color.fromARGB(
                255,
                _random.nextInt(256),
                _random.nextInt(256),
                _random.nextInt(256),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
