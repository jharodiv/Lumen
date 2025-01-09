import 'package:flutter/material.dart';

class Maharaniheader extends StatelessWidget {
  const Maharaniheader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'MAHARANI',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}
