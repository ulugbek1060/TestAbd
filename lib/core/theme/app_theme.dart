
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_size.dart';

class AppTheme {

  /// ---------------- BUTTON STYLES ----------------
  static final _flatButtonStyle = TextButton.styleFrom(
    // textStyle: AppTypography.medium().labelMedium.copyWith(
    //   fontWeight: FontWeight.w300,
    // ),
    padding: 16.hPadding,
    overlayColor: AppColors.secondaryColor.withAlpha(128), // Blue ripple
    fixedSize: const Size(double.infinity, 48),
    minimumSize: const Size(double.infinity, 48),
  );

  static final _elevatedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: AppColors.secondaryColor, // Blue
    textStyle: const TextStyle(
      fontFamily: 'Manrope-Medium',
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    elevation: 0,
    fixedSize: const Size(double.infinity, 48),
    minimumSize: const Size(double.infinity, 48),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    shape: RoundedRectangleBorder(borderRadius: 16.borderRadius),
  );

  static final _outlinedButtonStyle = OutlinedButton.styleFrom(
    textStyle: TextStyle(
      fontFamily: 'Manrope-Medium',
      color: AppColors.secondaryColor, // Blue text
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    minimumSize: const Size(double.infinity, 48),
    side: BorderSide(
      color: AppColors.secondaryColor, // Blue border
      width: AppSize.defBorderSize,
    ),
    shape: RoundedRectangleBorder(borderRadius: 16.borderRadius),
  );

  /// ---------------- INPUT DECORATION ----------------

  static final _inputDecoration = InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.lowEmphasized,
        width: AppSize.defBorderSize,
      ),
      borderRadius: 12.borderRadius,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.lowEmphasized,
        width: AppSize.defBorderSize,
      ),
      borderRadius: 12.borderRadius,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.secondaryColor, // Blue Focus
        width: AppSize.defBorderSize,
      ),
      borderRadius: 12.borderRadius,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: AppSize.defBorderSize),
      borderRadius: 12.borderRadius,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: AppSize.defBorderSize),
      borderRadius: 12.borderRadius,
    ),
    labelStyle: TextStyle(
      color: AppColors.secondaryColor, // Blue label
      fontSize: 14,
    ),
    hintStyle: TextStyle(
      color: AppColors.highEmphasized,
      fontSize: 14,
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    fillColor: Colors.white,
  );

  /// ---------------- SELECTION THEME ----------------

  static final _textSelectionTheme = const TextSelectionThemeData(
    cursorColor: AppColors.secondaryColor,
    selectionHandleColor: AppColors.secondaryColor,
  );

  /// ---------------- DIALOG THEME ----------------

  static final _dialogTheme = DialogThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: 16.borderRadius),
    // titleTextStyle: AppTypography.bold().titleLarge.copyWith(
    //   color: Colors.black,
    // ),
    // contentTextStyle: AppTypography.normal().bodyLarge.copyWith(
    //   color: Colors.black,
    // ),
    actionsPadding: 16.allPadding,
  );

  /// ---------------- LIGHT THEME DATA ----------------

  static final lightThemeData = ThemeData(
    useMaterial3: true,
    primarySwatch: AppColors.secondarySwatch,  // Blue swatch
    splashColor: AppColors.secondaryColor,
    hoverColor: Colors.transparent,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: 'Manrope',
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.onBackgroundColor),
      titleTextStyle: TextStyle(
        fontFamily: 'Manrope',
        color: AppColors.onBackgroundColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),

    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,       // White
      onPrimary: AppColors.onPrimaryColor,
      secondary: AppColors.secondaryColor,   // Blue
      onSecondary: AppColors.onSecondaryColor,
      error: AppColors.errorColor,
      onError: AppColors.onErrorColor,
      surface: AppColors.surfaceColor,
      onSurface: AppColors.onSurfaceColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(style: _elevatedButtonStyle),
    textButtonTheme: TextButtonThemeData(style: _flatButtonStyle),
    outlinedButtonTheme: OutlinedButtonThemeData(style: _outlinedButtonStyle),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
    inputDecorationTheme: _inputDecoration,
    textSelectionTheme: _textSelectionTheme,
    dialogTheme: _dialogTheme,
  );
}
