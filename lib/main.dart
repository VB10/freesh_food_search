import 'package:flutter/material.dart';

import 'core/app_theme.dart';
import 'view/app_tabbar_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: TabbarPage(),
      theme: ThemeManager.createTheme(DarkThemeLight()),
    );
  }
}
