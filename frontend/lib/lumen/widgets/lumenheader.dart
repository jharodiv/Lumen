import 'package:flutter/material.dart';

class LumenHeader extends StatelessWidget {
  const LumenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'LUMEN',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 34,
          color: Colors.white,
        ),
      ),
    );
  }
}
