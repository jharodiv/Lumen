import 'package:flutter/material.dart';

class Setupmylight extends StatelessWidget {
  const Setupmylight({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.lightbulb_outline,
                  size: 100,
                  color: Color(0xFF339857),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Setup My Light',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 2,
                  color: Colors.white,
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'My Light is your private space to store and share special photos with selected friends, where you can all add memories together.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Setup Light action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF339857),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Set up', style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
                  // Join Light action
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF339857)),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Join Light',
                  style: TextStyle(fontSize: 16, color: Color(0xFF339857)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
