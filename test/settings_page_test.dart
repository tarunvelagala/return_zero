import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/features/settings/settings_page.dart';

void main() {
  testWidgets('SettingsPage shows expected text', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SettingsPage()));
    expect(find.text('Settings Page'), findsOneWidget);
  });
}
