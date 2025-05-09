import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/lumen/screens/authScreens/signup_screen.dart';

void main() {
  testWidgets('Login screen smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SignupScreen()));

    expect(find.text('Login'), findsOneWidget);
    expect(find.byType(TextField), findsWidgets);

    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.pump();

    expect(find.text('test@example.com'), findsOneWidget);
  });
}
