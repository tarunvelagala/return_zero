import 'package:flutter/material.dart';
import 'package:return_zero/core/theme/app_typography.dart';

class AppTheme {
  // DARK MODE (The "Zero" Experience)
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: AppTypography.textTheme,
      fontFamily: AppTypography.primaryFont,
    );
  }

  // LIGHT MODE (High Contrast Minimalist)
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      // Invert background
      scaffoldBackgroundColor: Colors.white,
      // Typography usually handles color via Brightness
      textTheme: AppTypography.textTheme,
      fontFamily: AppTypography.primaryFont,
    );
  }
}
