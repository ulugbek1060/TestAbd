
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypography {
  // Base text theme using Manrope
  static TextTheme get textTheme => GoogleFonts.manropeTextTheme();

  // Custom styles (recommended for reuse)
  static TextStyle get displayLarge => GoogleFonts.manrope(
    fontSize: 57,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.25,
  );

  static TextStyle get displayMedium => GoogleFonts.manrope(
    fontSize: 45,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get displaySmall => GoogleFonts.manrope(
    fontSize: 36,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get headlineLarge => GoogleFonts.manrope(
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get headlineMedium => GoogleFonts.manrope(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get headlineSmall => GoogleFonts.manrope(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get titleLarge => GoogleFonts.manrope(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get titleMedium => GoogleFonts.manrope(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get titleSmall => GoogleFonts.manrope(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get bodyLarge => GoogleFonts.manrope(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get bodyMedium => GoogleFonts.manrope(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get bodySmall => GoogleFonts.manrope(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get labelLarge => GoogleFonts.manrope(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelMedium => GoogleFonts.manrope(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get labelSmall => GoogleFonts.manrope(
    fontSize: 11,
    fontWeight: FontWeight.w500,
  );
}
