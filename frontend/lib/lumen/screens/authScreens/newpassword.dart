import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/authentication/newpasswordform.dart';
import 'package:frontend/lumen/widgets/lumenheader.dart';

class Newpassword extends StatelessWidget {
  final String resetToken; // Add this field to pass the token

  const Newpassword({super.key, required this.resetToken});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isOverflowing = constraints.maxHeight < 600;

            return SingleChildScrollView(
              physics: isOverflowing
                  ? const AlwaysScrollableScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 30),
                  const Maharaniheader(),
                  const SizedBox(height: 70),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Newpasswordform(resetToken: resetToken),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
