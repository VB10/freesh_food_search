import 'package:flutter/material.dart';

@immutable
class AppColors {
  final green = Color(0xff7bed8d);
  final mediumGrey = Color(0xffa6bcd0);
  final white = Color(0xffffffff);
  final darkGrey = Color(0xff4e5d6a);
  final darkerGrey = Color(0xff404e5a);
  final lightGrey = Color(0xffdbe2ed);
  final lighterGrey = Color(0xfff0f4f8);
  final greyBlue = Color(0xff748a9d);
}

abstract class IColorTheme {
  AppColors get colors;
  Color? backgroundColor;
  Color? tabBarNormalColor;
  Color? tabBarSelectedColor;
  Color? floatingActionColor;
  Brightness? brightness;
  ColorScheme? colorScheme;
}
