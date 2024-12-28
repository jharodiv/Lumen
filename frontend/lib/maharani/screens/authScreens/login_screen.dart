import 'package:flutter/material.dart';
import 'package:frontend/maharani/widgets/authentication/login_form.dart';
import 'package:frontend/maharani/widgets/authentication/authentication_image.dart';

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
              const AuthenticationImage(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const LoginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
