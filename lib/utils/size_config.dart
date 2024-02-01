import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktopBp = 1300;
  static const double tabletBp = 800;
  static late double width, height;
  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).height;
  }
}
