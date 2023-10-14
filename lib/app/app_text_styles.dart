import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  //Headings
  static TextStyle titleLarge = GoogleFonts.specialElite(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
  );

  static TextStyle titleMedium = GoogleFonts.specialElite(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.32,
  );
  static TextStyle titleSmall = GoogleFonts.specialElite(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.28,
  );

  //Body
  static TextStyle bodyLarge = GoogleFonts.specialElite(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.02,
  );
  static TextStyle bodyMedium = GoogleFonts.specialElite(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.24,
  );

  ///inverse color
  static TextStyle labelMedium = GoogleFonts.specialElite(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.24,
  );

  static TextStyle bodySmall = GoogleFonts.specialElite(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.24,
  );
}
