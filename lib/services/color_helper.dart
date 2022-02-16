import 'dart:math';

import 'package:flutter/material.dart';

class ColorHelper {
  ColorHelper._();

  static final ColorHelper _instance = ColorHelper._();

  factory ColorHelper() {
    return _instance;
  }

  Random _random = Random();

  Color generateColor() {
    List<int> colorIntegers = []..length = 3;
    for (int i = 0; i < 3; i++) {
      colorIntegers[i] = _random.nextInt(255);
    }
    return const Color.fromARGB(255, 255, 255, 255);
  }
}
