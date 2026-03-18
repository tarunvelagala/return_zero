import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_theme_constants.dart';

class AppTheme {
  static ThemeData _getBaseTheme(Brightness brightness) {
    final isLight = brightness == Brightness.light;
    final baseTextColor = isLight ? Colors.black : Colors.white;
    final backgroundColor = isLight ? Colors.white : Colors.black;

    final baseData = ThemeData(
      brightness: brightness,
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
    );

    return baseData.copyWith(
      primaryColor: baseTextColor,

      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: isLight
            ? SystemUiOverlayStyle.dark
            : SystemUiOverlayStyle.light,
      ),

      textTheme: _getThemedText(baseData.textTheme, baseTextColor),

      colorScheme: ColorScheme.fromSeed(
        seedColor: baseTextColor,
        brightness: brightness,
        surface: backgroundColor,
        onSurface: baseTextColor,
      ),
    );
  }

  static ThemeData get lightTheme => _getBaseTheme(Brightness.light);
  static ThemeData get darkTheme => _getBaseTheme(Brightness.dark);

  static TextTheme _getThemedText(TextTheme base, Color primaryColor) {
    return base.copyWith(
      displayLarge: base.displayLarge?.copyWith(
        fontSize: AppThemeConstants.fontSizeDisplayLarge,
        fontWeight: AppThemeConstants.fontWeightLight,
        letterSpacing: AppThemeConstants.letterSpacingDisplayLarge,
        color: primaryColor,
        height: AppThemeConstants.lineHeightDisplayLarge,
      ),

      displaySmall: base.displaySmall?.copyWith(
        fontSize: AppThemeConstants.fontSizeDisplaySmall,
        fontWeight: AppThemeConstants.fontWeightNormal,
        letterSpacing: AppThemeConstants.letterSpacingDisplaySmall,
        color: primaryColor,
      ),

      headlineSmall: base.headlineSmall?.copyWith(
        fontSize: AppThemeConstants.fontSizeHeadlineSmall,
        fontWeight: AppThemeConstants.fontWeightNormal,
        color: primaryColor.withValues(alpha: AppThemeConstants.opacityHigh),
      ),

      titleLarge: base.titleLarge?.copyWith(
        fontSize: AppThemeConstants.fontSizeTitleLarge,
        fontWeight: AppThemeConstants.fontWeightNormal,
        color: primaryColor.withValues(alpha: AppThemeConstants.opacityHigh),
      ),

      bodyMedium: base.bodyMedium?.copyWith(
        fontSize: AppThemeConstants.fontSizeBodyMedium,
        fontWeight: AppThemeConstants.fontWeightNormal,
        fontStyle: FontStyle.italic,
        color: primaryColor.withValues(alpha: AppThemeConstants.opacityMedium),
      ),

      labelSmall: base.labelSmall?.copyWith(
        fontSize: AppThemeConstants.fontSizeLabelSmall,
        fontWeight: AppThemeConstants.fontWeightBold,
        letterSpacing: AppThemeConstants.letterSpacingLabelSmall,
        color: primaryColor.withValues(alpha: AppThemeConstants.opacityLow),
      ),
    );
  }
}
