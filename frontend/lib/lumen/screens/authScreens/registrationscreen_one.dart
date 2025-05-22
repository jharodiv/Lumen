import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/authentication/authentication_image.dart';
import 'package:frontend/lumen/widgets/authentication/registrationform_one.dart';

class RegistrationscreenOne extends StatelessWidget {
  final String email;

  const RegistrationscreenOne({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AuthenticationImage(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: RegistrationformOne(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
