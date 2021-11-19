import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6061FA);
const kBackgroundColor = Color(0xFFF7F7FB);
const kSecondaryColor = Color(0xFFC1B9B9);
const kErrorColor = Color(0xFFFE5350);

class Config {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}
