# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
# Run all tests
flutter test

# Run a single test file
flutter test test/core/theme/app_theme_test.dart

# Analyze/lint
flutter analyze

# Format code
dart format lib/ test/

# Run the app
flutter run

# Build
flutter build apk
flutter build appbundle
```

## Architecture

This is a Flutter app (`com.vtkr.return_zero`) configured as an Android home launcher.

```
lib/
├── main.dart                        # Entry point; enables edge-to-edge UI via SystemChrome
├── app/
│   └── return_zero.dart             # Root MaterialApp widget; wires AppTheme + ThemeMode.system
└── core/
    └── theme/
        ├── app_theme.dart           # ThemeData factory for light/dark themes
        └── app_theme_constants.dart # Semantic design tokens (font sizes, weights, opacity levels)
```

Tests mirror the `lib/` structure under `test/`.

### Theme system

`AppThemeConstants` defines semantic design tokens (font sizes, weights, letter spacing, opacity). `AppTheme` uses these to produce `ThemeData` for light and dark modes. The root widget applies `ThemeMode.system` so the OS controls the active theme. New UI should consume `AppThemeConstants` values rather than hardcoding numbers.
