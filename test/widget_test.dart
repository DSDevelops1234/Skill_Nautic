// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:edu_connect_app/main.dart';

void main() {
  testWidgets('DashboardScreen has a title and message',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const EduConnectApp());

    // Verify that the DashboardScreen displays the correct title.
    expect(find.text('Dashboard'), findsOneWidget);
  });
}
