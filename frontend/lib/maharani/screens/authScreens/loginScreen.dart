import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(20.0), 
              child: Image.asset(
                'assets/images/authentication/loginpage.png',
                width: 450,
                height: 450,
                fit: BoxFit.contain,
              ),
            ),
            const Placeholder(), 
          ],
        ),
      ),
    );
  }
}
