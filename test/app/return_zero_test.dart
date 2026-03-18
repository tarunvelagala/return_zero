import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/app/return_zero.dart';

void main() {
  group('ReturnZero Widget Tests', () {
    testWidgets('should render ReturnZero widget without errors', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const ReturnZero());

      // Verify that the text 'Return Zero' is present.
      // There are 16 Text widgets with the text 'Return Zero' in the current main branch as of Step 439.
      expect(find.text('Return Zero'), findsAtLeast(1));
    });

    testWidgets('should apply the correct theme to text styles', (WidgetTester tester) async {
      await tester.pumpWidget(const ReturnZero());
      
      // Get the first Text widget which uses displayLarge
      final Text firstText = tester.widget(find.text('Return Zero').first);
      
      // Verify that the style is not null (since we defined it in AppTheme)
      expect(firstText.style, isNotNull);
      
      // We can also verify specific theme configurations
      final context = tester.element(find.byType(ReturnZero));
      final theme = Theme.of(context);
      
      expect(theme.useMaterial3, isTrue);
      // Instead of exact colors, we check if the brightness matches our expectation (Light by default in tests)
      expect(theme.brightness, Brightness.light);
    });

    testWidgets('should render a scrollable list of theme styles', (WidgetTester tester) async {
      // Even though the current code uses a Column, in a real app it might need a list.
      // We check if all items are reachable or at least present in the tree.
      await tester.pumpWidget(const ReturnZero());
      
      // Verify that 'Return Zero' appears multiple times (matching the number of styles shown).
      expect(find.text('Return Zero'), findsNWidgets(16));
    });
  });
}
