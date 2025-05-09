import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/authentication/authentication_image.dart';
import 'package:frontend/lumen/widgets/authentication/registrationform_two.dart';

class RegistrationscreenTwo extends StatelessWidget {
  const RegistrationscreenTwo({super.key});

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
                child: RegistrationformTwo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
