import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/core/theme/app_theme.dart';
import 'package:return_zero/features/home/home_screen.dart';
import 'package:return_zero/features/home/widgets/app_list.dart';
import 'package:return_zero/features/home/widgets/clock_section.dart';
import 'package:return_zero/features/home/widgets/info_section.dart';

void main() {
  Widget wrap() => MaterialApp(
        theme: AppTheme.darkTheme,
        home: const HomeScreen(),
      );

  group('HomeScreen', () {
    testWidgets('renders all major sections', (WidgetTester tester) async {
      await tester.pumpWidget(wrap());
      expect(find.byType(ClockSection), findsOneWidget);
      expect(find.byType(InfoSection), findsNWidgets(2));
      expect(find.byType(AppList), findsOneWidget);
    });

    testWidgets('renders clock time and period', (WidgetTester tester) async {
      await tester.pumpWidget(wrap());
      expect(find.text('01:43'), findsOneWidget);
      expect(find.text('pm'), findsOneWidget);
      expect(find.text('1h 12m'), findsOneWidget);
    });

    testWidgets('renders date and battery line', (WidgetTester tester) async {
      await tester.pumpWidget(wrap());
      expect(find.text('Fri, 15 Nov, 90%'), findsOneWidget);
    });

    testWidgets('renders calendar and notes sections', (WidgetTester tester) async {
      await tester.pumpWidget(wrap());
      expect(find.text('CALENDAR EVENTS'), findsOneWidget);
      expect(find.text('Design Sync'), findsOneWidget);
      expect(find.text('NOTES'), findsOneWidget);
    });
  });
}
