import 'package:flutter/material.dart';
import 'package:frontend/maharani/widgets/authentication/login_form.dart';
import 'package:frontend/maharani/widgets/authentication/login_image.dart';


class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Aligns children at the top
          children: [
            const SizedBox(height: 40), 
            const Loginimage(),
            const LoginForm(), 
          ],
        ),
      ),
    );
  }
}
