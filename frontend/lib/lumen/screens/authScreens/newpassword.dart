import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/authentication/newpasswordform.dart';
import 'package:frontend/lumen/widgets/lumenheader.dart';

class Newpassword extends StatelessWidget {
  const Newpassword({super.key}); // Removed resetToken

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
                  const LumenHeader(),
                  const SizedBox(height: 70),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: const Newpasswordform(), // Removed parameter
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
