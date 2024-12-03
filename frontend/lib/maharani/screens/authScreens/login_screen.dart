import 'package:flutter/material.dart';
import 'package:frontend/maharani/widgets/authentication/login_form.dart';
import 'package:frontend/maharani/widgets/authentication/login_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const LoginImage(), // Displays the login image
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const LoginForm(), // Displays the login form
              ),
            ],
          ),
        ),
      ),
    );
  }
}
