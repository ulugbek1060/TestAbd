import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    // ---------- COLOR SCHEME ----------
    colorScheme: const ColorScheme(
      brightness: Brightness.light,

      // Primary (Black)
      primary: Colors.black,
      onPrimary: Colors.white,
      primaryContainer: Color(0xFF1C1C1C),
      onPrimaryContainer: Colors.white,

      // Secondary (Blue)
      secondary: Colors.blue,
      onSecondary: Colors.white,
      secondaryContainer: Color(0xFFBBDEFB),
      onSecondaryContainer: Colors.black,

      // Tertiary (Optional accent)
      tertiary: Color(0xFF1565C0),
      onTertiary: Colors.white,
      tertiaryContainer: Color(0xFFD0E2FF),
      onTertiaryContainer: Colors.black,

      // Error
      error: Colors.red,
      onError: Colors.white,
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Colors.black,

      // Background & Surface
      background: Color(0xFFF5F5F5),
      onBackground: Colors.black,

      surface: Colors.white,
      onSurface: Colors.black,

      surfaceVariant: Color(0xFFE0E0E0),
      onSurfaceVariant: Color(0xFF424242),

      outline: Color(0xFFBDBDBD),
      outlineVariant: Color(0xFFE0E0E0),

      shadow: Colors.black,
      scrim: Colors.black54,

      inverseSurface: Colors.black,
      onInverseSurface: Colors.white,
      inversePrimary: Colors.blueAccent,
    ),

    // ---------- APP BAR ----------
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),

    // ---------- SCAFFOLD ----------
    scaffoldBackgroundColor: Color(0xFFF5F5F5),

    // ---------- BUTTONS ----------
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.blue),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.blue),
      ),
    ),

    // ---------- INPUT FIELDS ----------
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.circular(12),
      ),
      labelStyle: const TextStyle(color: Colors.black),
    ),

    // ---------- ICONS ----------
    iconTheme: const IconThemeData(color: Colors.black),

    // ---------- DIVIDER ----------
    dividerTheme: const DividerThemeData(
      color: Color(0xFFBDBDBD),
      thickness: 1,
    ),

    // ---------- FLOATING ACTION BUTTON ----------
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
  );
}
