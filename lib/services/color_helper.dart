import 'dart:math';

import 'package:flutter/material.dart';

///Class for work with color
class ColorHelper {
  static final ColorHelper _instance = ColorHelper._();

  /// Singleton
  factory ColorHelper() {
    return _instance;
  }

  ColorHelper._();

  ///Method for creating color
  Color generateColor() {
    final Random _random = Random();

    const int rgbNumber = 255;
    Color _color = Color.fromARGB(
      rgbNumber,
      _random.nextInt(rgbNumber),
      _random.nextInt(rgbNumber),
      _random.nextInt(rgbNumber),
    );

    /// Black background will hide main text.
    if (_color == Colors.black) {
      _color = generateColor();
    }

    return _color;
  }
}
