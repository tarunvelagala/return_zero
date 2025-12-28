import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/app/return_zero.dart';
import 'package:return_zero/features/home/presentation/widgets/header_widget.dart';
import 'package:return_zero/features/home/presentation/widgets/time_date_widget.dart';
import 'package:return_zero/features/home/presentation/widgets/stats_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  testWidgets('Home page shows header, pinned apps and onboarding', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ReturnZero());
    await tester.pumpAndSettle();

    expect(find.byType(HeaderWidget), findsOneWidget);
    expect(find.text('PinnedAppsWidget'), findsOneWidget);
    expect(find.text('InstructionsWidget'), findsOneWidget);
  });

  testWidgets('Header contains TimeDateWidget and StatsWidget', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: HeaderWidget()));
    await tester.pumpAndSettle();

    expect(find.byType(TimeDateWidget), findsOneWidget);
    expect(find.byType(StatsWidget), findsOneWidget);
  });

  testWidgets('Header ResponsiveRowColumn alignment is baseline', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: HeaderWidget()));
    await tester.pumpAndSettle();

    final finder = find.byType(ResponsiveRowColumn);
    expect(finder, findsOneWidget);

    final widget = tester.widget<ResponsiveRowColumn>(finder);
    expect(widget.rowCrossAxisAlignment, equals(CrossAxisAlignment.baseline));
    expect(widget.rowTextBaseline, equals(TextBaseline.alphabetic));
  });

  testWidgets('HomePage long-press opens SettingsPage', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ReturnZero());
    await tester.pumpAndSettle();

    final gestureFinder = find.byType(GestureDetector).first;
    expect(gestureFinder, findsOneWidget);

    final gestureWidget = tester.widget<GestureDetector>(gestureFinder);
    gestureWidget.onLongPress!();
    await tester.pumpAndSettle();

    expect(find.text('Settings Page'), findsOneWidget);
  });

  testWidgets('HomePage swipe up opens DrawerPage and swipe down closes it', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ReturnZero());
    await tester.pumpAndSettle();

    // Triggering the vertical drag handler directly due to the same hit-test blockage mentioned above.
    final gestureFinder = find.byType(GestureDetector).first;
    final gestureWidget = tester.widget<GestureDetector>(gestureFinder);

    // Simulate swipe up
    gestureWidget.onVerticalDragEnd!(
      DragEndDetails(
        primaryVelocity: -1000.0,
        velocity: const Velocity(pixelsPerSecond: Offset(0, -1000.0)),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('DrawerPage'), findsOneWidget);

    // Swipe down to close (DrawerPage handles this itself and is not obscured)
    await tester.fling(
      find.text('DrawerPage'),
      const Offset(0.0, 300.0),
      1000.0,
    );
    await tester.pumpAndSettle();

    expect(find.text('DrawerPage'), findsNothing);
    expect(find.byType(HeaderWidget), findsOneWidget);
  });
}
