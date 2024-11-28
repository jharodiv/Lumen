import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/maharani/screens/authScreens/login_screen.dart';
import 'package:frontend/main.dart';

void main() {
  testWidgets('Login screen smoke test', (WidgetTester tester) async {
    // Build the login screen and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: Loginscreen()));

    // Check for elements on the login screen.
    expect(find.text('Login'), findsOneWidget); // Adjust based on your UI.
    expect(find.byType(TextField), findsWidgets); // Look for text fields.

    // Optional: Interact with widgets if needed.
    // For example, entering text into a TextField:
    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.pump();

    // Verify changes or actions.
    // Example: Ensure the entered text is displayed.
    expect(find.text('test@example.com'), findsOneWidget);
  });
}
