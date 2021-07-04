import 'package:flutter/material.dart';

abstract class ITextTheme {
  final Color? primaryColor;
  TextStyle? headline6;
  TextStyle? body1;
  String? fontFamily;

  ITextTheme(this.primaryColor);
}
