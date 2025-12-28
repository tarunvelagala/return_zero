import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/app/return_zero.dart';
import 'package:return_zero/features/home/presentation/header_widget.dart';
import 'package:return_zero/features/home/presentation/time_date_widget.dart';
import 'package:return_zero/features/home/presentation/stats_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  testWidgets('Home page shows header, pinned apps and onboarding',
      (WidgetTester tester) async {
    await tester.pumpWidget(const ReturnZero());

    expect(find.byType(HeaderWidget), findsOneWidget);
    expect(find.text('PinnedApps'), findsOneWidget);
    expect(find.text('OnboardingInstructions'), findsOneWidget);
  });

  testWidgets('Header contains TimeDateWidget and StatsWidget',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HeaderWidget()));
    await tester.pumpAndSettle();

    expect(find.byType(TimeDateWidget), findsOneWidget);
    expect(find.byType(StatsWidget), findsOneWidget);
  });

  testWidgets('Header ResponsiveRowColumn alignment is baseline',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HeaderWidget()));
    await tester.pumpAndSettle();

    final finder = find.byType(ResponsiveRowColumn);
    expect(finder, findsOneWidget);

    final widget = tester.widget<ResponsiveRowColumn>(finder);
    expect(widget.rowCrossAxisAlignment, equals(CrossAxisAlignment.baseline));
    expect(widget.rowTextBaseline, equals(TextBaseline.alphabetic));
  });
}
