import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/authentication/login_form.dart';

class Newpasswordform extends StatelessWidget {
  const Newpasswordform({super.key}); // Removed resetToken

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    void handleResetPassword() {
      final newPassword = passwordController.text.trim();
      final confirmPassword = confirmPasswordController.text.trim();

      if (newPassword.isEmpty || confirmPassword.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please fill out all fields')),
        );
        return;
      }

      if (newPassword != confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Passwords do not match')),
        );
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password reset successful (demo)')),
      );

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const LoginForm()),
        (route) => false,
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Please enter your new password below to update your account. Make sure your password meets the security requirements for a safe and secure update.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: 'New Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: confirmPasswordController,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 150,
            child: ElevatedButton(
              onPressed: handleResetPassword,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF39996B),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              child: const Text(
                'Save',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
