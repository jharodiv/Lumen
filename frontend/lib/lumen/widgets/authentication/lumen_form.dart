import 'package:flutter/material.dart';

class LumenForm extends StatelessWidget {
  const LumenForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;

          return SizedBox(
            width: width * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'LUMEN',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    // Left-aligned text below 'Lumen'
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Capture the moments, share the memories, and create your story together.',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              fontFamily: 'Inter',
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email address',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        final email = emailController.text.trim();
                        if (email.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Please Enter your email')),
                          );
                          return;
                        }
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Continue with email'),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 57, 153, 107),
                        minimumSize: const Size(double.infinity, 50),
                        textStyle: const TextStyle(fontSize: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Facebook login function
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        side: BorderSide(
                          color: Colors.white.withOpacity(0.5),
                          width: 1,
                        ),
                        textStyle: const TextStyle(fontSize: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              'assets/images/authentication/facebook.png',
                              height: 24,
                              width: 24,
                            ),
                          ),
                          const Center(
                            child: Text(
                              'Continue with Facebook',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Google login function
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        side: BorderSide(
                          color: Colors.white.withOpacity(0.5),
                          width: 1,
                        ),
                        textStyle: const TextStyle(fontSize: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              'assets/images/authentication/google.png',
                              height: 24,
                              width: 24,
                            ),
                          ),
                          const Center(
                            child: Text(
                              'Continue with Google',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
