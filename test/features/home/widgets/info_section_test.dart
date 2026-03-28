import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/core/theme/app_theme.dart';
import 'package:return_zero/features/home/widgets/info_section.dart';

void main() {
  Widget wrap(Widget child) => MaterialApp(
        theme: AppTheme.darkTheme,
        home: Scaffold(body: child),
      );

  group('InfoSection', () {
    testWidgets('renders label, title, and subtitle when provided', (WidgetTester tester) async {
      await tester.pumpWidget(
        wrap(const InfoSection(
          label: 'CALENDAR EVENTS',
          title: 'Design Sync',
          subtitle: '10:00 AM — 11:00 AM',
        )),
      );
      expect(find.text('CALENDAR EVENTS'), findsOneWidget);
      expect(find.text('Design Sync'), findsOneWidget);
      expect(find.text('10:00 AM — 11:00 AM'), findsOneWidget);
    });

    testWidgets('omits subtitle when not provided', (WidgetTester tester) async {
      await tester.pumpWidget(
        wrap(const InfoSection(
          label: 'NOTES',
          title: '— Finalize Return Zero mockups',
        )),
      );
      expect(find.text('NOTES'), findsOneWidget);
      expect(find.text('— Finalize Return Zero mockups'), findsOneWidget);
      expect(find.byType(Text), findsNWidgets(2));
    });
  });
}
