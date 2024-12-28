import 'package:flutter/material.dart';
import 'package:frontend/maharani/widgets/authentication/authentication_image.dart';
import 'package:frontend/maharani/widgets/authentication/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AuthenticationImage(), // Displays the login image
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const SignupForm(), // Displays the login form
              ),
            ],
          ),
        ),
      ),
    );
  }
}
