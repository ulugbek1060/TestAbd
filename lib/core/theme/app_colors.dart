import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AppColors {
  // --------------------------------------------------
  // BRAND (INSTAGRAM)
  // --------------------------------------------------
  static const Color primary = Color(0xFF000000);
  static const Color secondary = Color(0xFF405DE6);

  static const Color instagramPurple = Color(0xFF833AB4);
  static const Color instagramPink = Color(0xFFE1306C);
  static const Color instagramOrange = Color(0xFFF56040);
  static const Color instagramYellow = Color(0xFFFCAF45);

  // Gradient used for buttons / highlights
  static const LinearGradient instagramGradient = LinearGradient(
    colors: [
      instagramPurple,
      instagramPink,
      instagramOrange,
      instagramYellow,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // --------------------------------------------------
  // TEXT
  // --------------------------------------------------
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Color(0xFFB3B3B3);

  // --------------------------------------------------
  // BACKGROUND & SURFACE
  // --------------------------------------------------
  static const Color scaffoldBackground = primary;
  static const Color surface = Color(0xFF121212);
  static const Color surfaceVariant = Color(0xFF1E1E1E);

  // --------------------------------------------------
  // BORDERS & DIVIDERS
  // --------------------------------------------------
  static const Color outline = Color(0xFF2A2A2A);
  static const Color divider = Color(0xFF262626);

  // --------------------------------------------------
  // INPUT
  // --------------------------------------------------
  static const Color inputFill = Color(0xFF121212);
  static const Color inputFocusedBorder = instagramPink;

  // --------------------------------------------------
  // BUTTONS
  // --------------------------------------------------
  static const Color elevatedButtonText = Colors.white;
  static const Color outlinedButtonBorder = Color(0xFF2A2A2A);

  // --------------------------------------------------
  // ICONS
  // --------------------------------------------------
  static const Color icon = Colors.white;

  // --------------------------------------------------
  // STATUS
  // --------------------------------------------------
  static const Color error = Color(0xFFED4956);
}
