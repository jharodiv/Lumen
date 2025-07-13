import 'package:flutter/material.dart';

class Sharecode extends StatefulWidget {
  const Sharecode({super.key});

  @override
  State<Sharecode> createState() => _SharecodeState();
}

class _SharecodeState extends State<Sharecode> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: DefaultTextStyle(
        style: const TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
        child: FractionallySizedBox(
          alignment: Alignment.topCenter,
          heightFactor: 0.5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Invite members to the {lightname} Light.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Share your code out loud or send it in a message.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "ABC123",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ), //PLACE HOLDER
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        //ElevatedButtonFunction
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF339857),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
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
  }
}
