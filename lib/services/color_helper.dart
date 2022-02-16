import 'dart:math';

import 'package:flutter/material.dart';

class ColorHelper {
  ColorHelper._();

  static final ColorHelper _instance = ColorHelper._();

  factory ColorHelper() {
    return _instance;
  }

  final Random _random = Random();

  Color generateColor() {
    const int otpSize = 3;
    List<int> colorIntegers = List<int>.filled(otpSize, 255);

    for (int i = 0; i < 3; i++) {
      colorIntegers[i] = _random.nextInt(255);
    }
    return Color.fromARGB(
      255,
      colorIntegers[0],
      colorIntegers[1],
      colorIntegers[2],
    );
  }
}
