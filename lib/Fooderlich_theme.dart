// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  FooderlichTheme {
  // 1
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
        fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.black),
    headline1: GoogleFonts.openSans(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headline2: GoogleFonts.openSans(
        fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.black),
    headline3: GoogleFonts.openSans(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
    headline6: GoogleFonts.openSans(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black),
  );
  // 2
  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),
    headline1: GoogleFonts.openSans(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headline2: GoogleFonts.openSans(
        fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.white),
    headline3: GoogleFonts.openSans(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    headline6: GoogleFonts.openSans(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white),
  );
  // 3
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Colors.green),
      textTheme: lightTextTheme,
    );
  }

  // 4
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.grey[900],
      textTheme: darkTextTheme,
    );
  }
}
