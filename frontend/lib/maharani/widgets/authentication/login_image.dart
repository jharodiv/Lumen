import 'package:flutter/material.dart';

class Loginimage extends StatelessWidget {
  const Loginimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Image.asset( 'assets/images/authentication/loginpage.png',
      width: 250,
      height: 250,
      fit: BoxFit.contain,
      ),
    );
  }
}