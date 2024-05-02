import 'package:flutter/material.dart';

abstract class MediaQueryHelper {
  static late Size _mediaQueryData;
  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.sizeOf(context);
  }

  static Size get mediaQueryData => _mediaQueryData;
  static double get screenWidth => _mediaQueryData.width;
  static double get screenHeight => _mediaQueryData.height;
}
