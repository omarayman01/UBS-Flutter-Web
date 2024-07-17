import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color primary = const Color(0xff091133);
  static Color mainText = const Color(0xff505f98);
  static Color subText = const Color(0xff6f7cB2);
  static Color navText = const Color(0xff37447E);
  static Color black = const Color(0xff090F13);
  static Color grey = const Color(0xff606060);
  static Color white = const Color(0xffFFFFFF);
  static Color lightGrey = const Color(0xff99999B);
  static Color dividerGrey = const Color(0xffE0E0E0);
  static Color green = const Color(0xff32CD32);
  static Color red = const Color(0xffE44235);

  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
        displayLarge: GoogleFonts.roboto(
            fontSize: 50, fontWeight: FontWeight.bold, color: primary),
        displayMedium: GoogleFonts.roboto(
            fontSize: 36, fontWeight: FontWeight.bold, color: primary),
        displaySmall: GoogleFonts.roboto(
            fontSize: 26, fontWeight: FontWeight.bold, color: primary),
        bodyMedium: GoogleFonts.roboto(
            fontSize: 18, fontWeight: FontWeight.w500, color: mainText),
        bodySmall: GoogleFonts.roboto(
            fontSize: 16, fontWeight: FontWeight.w500, color: subText)),
    primaryColor: primary,
    scaffoldBackgroundColor: white,
  );
}
