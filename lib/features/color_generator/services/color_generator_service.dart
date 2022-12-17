import 'dart:math';

import 'package:flutter/material.dart';

/// Class for random color generation
class ColorGeneratorService {
  /// Maximum RGB value
  static const int maxRGBValue = 255;

  /// Color opacity value
  static const double colorOpacity = 1.0;

  /// Generates random int value in range from [0] to [maxRGBValue] inclusive
  int generateRandomColorValue() {
    return Random().nextInt(maxRGBValue + 1);
  }

  /// Generates random Color
  Color generateRandomColor() {
    return Color.fromRGBO(
      generateRandomColorValue(),
      generateRandomColorValue(),
      generateRandomColorValue(),
      colorOpacity,
    );
  }
}
