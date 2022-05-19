import 'package:convert/convert.dart';
import 'package:flutter/material.dart';

class ColorUtils {
  /// Generate background color from string.
  static Color backgroundColorWithString(String str) {
    return Color(int.parse(
        'ff' + hex.encode('${str}color'.codeUnits).substring(1, 7),
        radix: 16));
  }

  /// Generate foreground color from string.
  static Color foregroundColorWithString(String str) {
    final bgColor = backgroundColorWithString(str);
    return bgColor.red * 0.299 + bgColor.green * 0.587 + bgColor.blue * 0.114 >
            186
        ? Colors.black
        : Colors.white;
  }
}
