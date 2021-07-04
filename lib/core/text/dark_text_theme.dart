import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ITextTheme.dart';

class DarkTextTheme implements ITextTheme {
  @override
  TextStyle? body1;

  @override
  String? fontFamily;

  @override
  TextStyle? headline6;

  final Color? primaryColor;

  DarkTextTheme(this.primaryColor) {
    body1 = TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
    headline6 = TextStyle(fontSize: 20, fontWeight: FontWeight.w300);
    fontFamily = GoogleFonts.actor().fontFamily;
  }
}
