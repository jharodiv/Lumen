import 'package:flutter/material.dart';
import 'package:frontend/lumen/screens/authScreens/newpassword.dart';
import 'package:frontend/lumen/screens/authScreens/lumen_screen.dart';

class Forgotpasswordconfirmation extends StatelessWidget {
  const Forgotpasswordconfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Please enter the email address associated with your account and we'll send you a link to reset your password",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 150,
            child: ElevatedButton(
              onPressed: () {
                final email = emailController.text.trim();

                if (email.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Please enter your email address')));
                  return;
                }

                // For frontend-only testing: Skip backend and go to Newpassword screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Newpassword(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 57, 153, 107),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LumenScreen()),
                  );
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xFF39996B),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
