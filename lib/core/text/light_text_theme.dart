import 'package:flutter/src/painting/text_style.dart';
import 'dart:ui';

import 'package:freesh_food_search/core/text/ITextTheme.dart';
import 'package:google_fonts/google_fonts.dart';

class LighTextTheme implements ITextTheme {
  @override
  TextStyle? body1;

  @override
  String? fontFamily;

  @override
  TextStyle? headline6;

  final Color? primaryColor;

  LighTextTheme(this.primaryColor) {
    body1 = TextStyle(fontSize: 17);
    headline6 = TextStyle(fontSize: 21, fontWeight: FontWeight.w500);
    fontFamily = GoogleFonts.acme().fontFamily;
  }
}
