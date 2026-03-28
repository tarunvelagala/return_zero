import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/app/return_zero.dart';
import 'package:return_zero/features/home/home_screen.dart';

void main() {
  group('ReturnZero Widget Tests', () {
    testWidgets('renders HomeScreen without errors', (WidgetTester tester) async {
      await tester.pumpWidget(const ReturnZero());
      expect(find.byType(HomeScreen), findsOneWidget);
    });

    testWidgets('applies Material3 light theme by default in tests', (WidgetTester tester) async {
      await tester.pumpWidget(const ReturnZero());
      final context = tester.element(find.byType(ReturnZero));
      final theme = Theme.of(context);
      expect(theme.useMaterial3, isTrue);
      expect(theme.brightness, Brightness.light);
    });

    testWidgets('renders all app names on home screen', (WidgetTester tester) async {
      await tester.pumpWidget(const ReturnZero());
      for (final app in ['Chrome', 'Photos', 'Spotify', 'Signal', 'Gmail', 'Notes']) {
        expect(find.text(app), findsOneWidget);
      }
    });
  });
}
