import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/core/theme/app_theme.dart';
import 'package:return_zero/features/home/widgets/clock_section.dart';

void main() {
  const clockSection = ClockSection(
    time: '01:43',
    period: 'pm',
    elapsed: '1h 12m',
    date: 'Fri, 15 Nov',
    battery: '90%',
    unlocks: '2',
  );

  Widget wrap(Widget child) => MaterialApp(
        theme: AppTheme.darkTheme,
        home: Scaffold(body: child),
      );

  group('ClockSection', () {
    testWidgets('renders time, period, elapsed, and date+battery', (WidgetTester tester) async {
      await tester.pumpWidget(wrap(clockSection));
      expect(find.text('01:43'), findsOneWidget);
      expect(find.text('pm'), findsOneWidget);
      expect(find.text('1h 12m'), findsOneWidget);
      expect(find.text('Fri, 15 Nov, 90%'), findsOneWidget);
    });

    testWidgets('time text uses displayLarge font size', (WidgetTester tester) async {
      await tester.pumpWidget(wrap(clockSection));
      final context = tester.element(find.byType(ClockSection));
      final fontSize = Theme.of(context).textTheme.displayLarge?.fontSize;
      final timeText = tester.widget<Text>(find.text('01:43'));
      expect(timeText.style?.fontSize, fontSize);
    });
  });
}
