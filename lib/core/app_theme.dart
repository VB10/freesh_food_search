import 'package:flutter/material.dart';
import 'package:freesh_food_search/core/color/dark_color.dart';
import 'package:freesh_food_search/core/color/light_color.dart';
import 'package:freesh_food_search/core/text/dark_text_theme.dart';
import 'package:freesh_food_search/core/text/light_text_theme.dart';

import 'color/IColorTheme.dart';
import 'text/ITextTheme.dart';

// THEME
abstract class ITheme {
  ITextTheme get textTheme;
  IColorTheme get colorTheme;
}

class AppThemeLight extends ITheme {
  @override
  IColorTheme get colorTheme => LightColor();

  @override
  ITextTheme get textTheme => LighTextTheme(colorTheme.colors.greyBlue);
}

class DarkThemeLight extends ITheme {
  @override
  IColorTheme get colorTheme => DarkColor();

  @override
  ITextTheme get textTheme =>
      DarkTextTheme(colorTheme.colors.greyBlue.withOpacity(0.4));
}

abstract class ThemeManager {
  static ThemeData createTheme(ITheme theme) {
    return ThemeData(
        fontFamily: theme.textTheme.fontFamily,
        scaffoldBackgroundColor: theme.colorTheme.backgroundColor,
        bottomAppBarColor: theme.colorTheme.backgroundColor,
        textTheme: TextTheme(
                headline6: theme.textTheme.headline6,
                bodyText1: theme.textTheme.body1)
            .apply(bodyColor: theme.textTheme.primaryColor),
        tabBarTheme: TabBarTheme(
            indicator: BoxDecoration(),
            labelColor: theme.colorTheme.tabBarSelectedColor,
            unselectedLabelColor: theme.colorTheme.tabBarNormalColor),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: theme.colorTheme.colors.white,
            backgroundColor: theme.colorTheme.floatingActionColor),
        appBarTheme: AppBarTheme(color: Colors.transparent),
        colorScheme: theme.colorTheme.colorScheme);
  }
}
