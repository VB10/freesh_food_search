import 'package:flutter/src/material/color_scheme.dart';
import 'dart:ui';

import 'package:freesh_food_search/core/color/IColorTheme.dart';

class LightColor implements IColorTheme {
  @override
  late final Color? backgroundColor;

  @override
  late final Brightness? brightness;

  @override
  late final ColorScheme? colorScheme;

  @override
  late final Color? tabBarNormalColor;

  @override
  late final Color? tabBarSelectedColor;

  @override
  final AppColors colors = AppColors();

  @override
  late final Color? floatingActionColor;

  LightColor() {
    backgroundColor = colors.white;
    tabBarSelectedColor = colors.green;
    tabBarNormalColor = colors.greyBlue;
    floatingActionColor = colors.greyBlue;
    brightness = Brightness.light;
    colorScheme = ColorScheme.light().copyWith(
        onPrimary: colors.darkGrey,
        onSurface: colors.green, //x
        onSecondary: colors.greyBlue);
  }
}
