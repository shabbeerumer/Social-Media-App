import 'package:flutter/material.dart';

class Mymediaquery {
  // Method to get the screen height.
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // Method to get the screen width.
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}