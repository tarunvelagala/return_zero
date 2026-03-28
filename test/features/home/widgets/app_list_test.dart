import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/core/theme/app_theme.dart';
import 'package:return_zero/features/home/widgets/app_list.dart';

void main() {
  Widget wrap(Widget child) => MaterialApp(
        theme: AppTheme.darkTheme,
        home: Scaffold(body: child),
      );

  group('AppList', () {
    testWidgets('renders all six app names', (WidgetTester tester) async {
      await tester.pumpWidget(wrap(const AppList()));
      for (final app in ['Chrome', 'Photos', 'Spotify', 'Signal', 'Gmail', 'Notes']) {
        expect(find.text(app), findsOneWidget);
      }
    });

    testWidgets('tapping an app name does not throw', (WidgetTester tester) async {
      await tester.pumpWidget(wrap(const AppList()));
      await tester.tap(find.text('Chrome'));
      await tester.pump();
    });

    testWidgets('app names use displaySmall font size', (WidgetTester tester) async {
      await tester.pumpWidget(wrap(const AppList()));
      final context = tester.element(find.byType(AppList));
      final fontSize = Theme.of(context).textTheme.displaySmall?.fontSize;
      final chromeText = tester.widget<Text>(find.text('Chrome'));
      expect(chromeText.style?.fontSize, fontSize);
    });
  });
}
