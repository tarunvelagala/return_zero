import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/app/return_zero.dart';
import 'package:return_zero/features/home/presentation/widgets/header_widget.dart';
import 'package:return_zero/features/home/presentation/widgets/time_date_widget.dart';
import 'package:return_zero/features/home/presentation/widgets/stats_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  testWidgets('Home page shows header, pinned apps and onboarding',
      (WidgetTester tester) async {
    await tester.pumpWidget(const ReturnZero());
    await tester.pumpAndSettle();

    expect(find.byType(HeaderWidget), findsOneWidget);
    expect(find.text('PinnedAppsWidget'), findsOneWidget);
    expect(find.text('InstructionsWidget'), findsOneWidget);
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

  testWidgets('HomePage long-press opens SettingsPage', (WidgetTester tester) async {
    await tester.pumpWidget(const ReturnZero());
    await tester.pumpAndSettle();

    final gestureFinder = find.byType(GestureDetector).first;
    expect(gestureFinder, findsOneWidget);

    // Ensure the gesture detector covers the screen and is opaque to hits
    final gestureWidget = tester.widget<GestureDetector>(gestureFinder);
    expect(gestureWidget.behavior, equals(HitTestBehavior.opaque));

    await tester.longPress(gestureFinder);
    await tester.pumpAndSettle();

    expect(find.text('Settings Page'), findsOneWidget);
  });
}
