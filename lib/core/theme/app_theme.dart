
import 'package:flutter/material.dart';
import 'package:testabd/core/theme/app_typography.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData themeDark = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    // --------------------------------------------------
    // COLOR SCHEME
    // --------------------------------------------------
    colorScheme: const ColorScheme.dark(
      primary: AppColors.secondary,
      secondary: AppColors.instagramPink,
      background: AppColors.scaffoldBackground,
      surface: AppColors.surface,
      error: AppColors.error,
      onPrimary: AppColors.textPrimary,
      onSecondary: AppColors.textPrimary,
      onBackground: AppColors.textPrimary,
      onSurface: AppColors.textPrimary,
      onError: AppColors.textPrimary,
    ),
    
    // --------------------------------------------------
    // TYPOGRAPHY
    // --------------------------------------------------
    textTheme: AppTypography.textTheme,

    // --------------------------------------------------
    // APP BAR
    // --------------------------------------------------
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.textPrimary,
      elevation: 0,
      centerTitle: true,
    ),

    // --------------------------------------------------
    // ELEVATED BUTTON (radius 6)
    // --------------------------------------------------
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        foregroundColor: AppColors.elevatedButtonText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        elevation: 0,
      ),
    ),

    // --------------------------------------------------
    // TEXT BUTTON
    // --------------------------------------------------
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.secondary,
      ),
    ),

    // --------------------------------------------------
    // OUTLINED BUTTON
    // --------------------------------------------------
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.textPrimary,
        side: BorderSide(color: AppColors.outlinedButtonBorder),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    ),

    // --------------------------------------------------
    // INPUT DECORATION (radius 6)
    // --------------------------------------------------
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.inputFill,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: AppColors.outline),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: AppColors.outline),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: AppColors.inputFocusedBorder,
          width: 2,
        ),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: AppColors.error),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: AppColors.error,
          width: 2,
        ),
      ),
      hintStyle: const TextStyle(
        color: AppColors.textSecondary,
      ),
    ),

    // --------------------------------------------------
    // ICONS & DIVIDER
    // --------------------------------------------------
    iconTheme: const IconThemeData(
      color: AppColors.icon,
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.divider,
      thickness: 1,
    ),

    // --------------------------------------------------
    // FAB
    // --------------------------------------------------
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.instagramPink,
      foregroundColor: Colors.white,
    ),
  );
}
