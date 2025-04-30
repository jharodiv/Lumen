import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/authentication/authentication_image.dart';
import 'package:frontend/lumen/widgets/authentication/lumen_form.dart';

class LumenScreen extends StatelessWidget {
  const LumenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AuthenticationImage(),
              SizedBox(height: 1.0),
              LumenForm(),
            ],
          ),
        ),
      ),
    );
  }
}
