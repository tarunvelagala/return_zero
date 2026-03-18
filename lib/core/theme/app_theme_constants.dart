import 'package:flutter/material.dart';

/// Semantic design tokens for the Return Zero theme to ensure SDE best practices
/// and avoid magic numbers.
class AppThemeConstants {
  // Font Sizes (Semantic Naming)
  static const double fontSizeDisplayLarge = 100.0;
  static const double fontSizeDisplaySmall = 36.0;
  static const double fontSizeHeadlineSmall = 28.0;
  static const double fontSizeTitleLarge = 20.0;
  static const double fontSizeTitleMedium = 18.0;
  static const double fontSizeBodyLarge = 18.0;
  static const double fontSizeBodyMedium = 15.0;
  static const double fontSizeLabelSmall = 12.0;

  // Font Weights
  static const FontWeight fontWeightLight = FontWeight.w300;
  static const FontWeight fontWeightNormal = FontWeight.w400;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightBold = FontWeight.w700;

  // Letter Spacings
  static const double letterSpacingDisplayLarge = -4.0;
  static const double letterSpacingDisplaySmall = -1.0;
  static const double letterSpacingLabelSmall = 1.2;

  // Line Heights
  static const double lineHeightDisplayLarge = 1.0;

  // Opacities (Semantic Naming)
  static const double opacityHigh = 0.7;
  static const double opacityMedium = 0.6;
  static const double opacityLow = 0.4;
}
