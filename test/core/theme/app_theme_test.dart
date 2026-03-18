import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/core/theme/app_theme.dart';
import 'package:return_zero/core/theme/app_theme_constants.dart';

void main() {
  group('AppTheme Tests', () {
    test('lightTheme should have correct Brightness and Background', () {
      final theme = AppTheme.lightTheme;
      
      expect(theme.brightness, Brightness.light);
      expect(theme.scaffoldBackgroundColor, Colors.white);
      expect(theme.useMaterial3, isTrue);
    });

    test('darkTheme should have correct Brightness and Background', () {
      final theme = AppTheme.darkTheme;
      
      expect(theme.brightness, Brightness.dark);
      expect(theme.scaffoldBackgroundColor, Colors.black);
      expect(theme.useMaterial3, isTrue);
    });

    test('TextTheme should apply font sizes and weights from AppThemeConstants', () {
      final theme = AppTheme.lightTheme;
      final textTheme = theme.textTheme;

      // Verify displayLarge (The Clock)
      expect(textTheme.displayLarge?.fontSize, AppThemeConstants.fontSizeDisplayLarge);
      expect(textTheme.displayLarge?.fontWeight, AppThemeConstants.fontWeightLight);
      expect(textTheme.displayLarge?.letterSpacing, AppThemeConstants.letterSpacingDisplayLarge);

      // Verify displaySmall (App List Items)
      expect(textTheme.displaySmall?.fontSize, AppThemeConstants.fontSizeDisplaySmall);
      expect(textTheme.displaySmall?.fontWeight, AppThemeConstants.fontWeightNormal);

      // Verify labelSmall (Section Headers)
      expect(textTheme.labelSmall?.fontSize, AppThemeConstants.fontSizeLabelSmall);
      expect(textTheme.labelSmall?.fontWeight, AppThemeConstants.fontWeightBold);
    });

    test('ColorScheme should match semantic primary colors', () {
      final lightTheme = AppTheme.lightTheme;
      final darkTheme = AppTheme.darkTheme;

      expect(lightTheme.colorScheme.onSurface, Colors.black);
      expect(darkTheme.colorScheme.onSurface, Colors.white);
    });
  });

  group('AppThemeConstants Tests', () {
    test('Constants should have expected numeric values', () {
      // These tests are useful to catch accidental changes to the tokens
      expect(AppThemeConstants.fontSizeDisplayLarge, 100.0);
      expect(AppThemeConstants.fontSizeLabelSmall, 12.0);
      expect(AppThemeConstants.opacityLow, 0.4);
    });
  });
}
