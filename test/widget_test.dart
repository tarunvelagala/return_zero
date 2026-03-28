import 'package:flutter_test/flutter_test.dart';
import 'package:return_zero/app/return_zero.dart';

void main() {
  testWidgets('Return Zero smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const ReturnZero());
    expect(find.text('01:43'), findsOneWidget);
  });
}
