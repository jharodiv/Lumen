import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/maharani/screens/authScreens/login_screen.dart';
import 'package:frontend/main.dart';

void main() {
  testWidgets('Login screen smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    expect(find.text('Login'), findsOneWidget); 
    expect(find.byType(TextField), findsWidgets);

    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.pump();

    expect(find.text('test@example.com'), findsOneWidget);
  });
}
