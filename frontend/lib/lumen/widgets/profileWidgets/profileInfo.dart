import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            // COVER PHOTO
            Container(
              height: 140,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/others/testcover.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              bottom: -44,
              left: 20,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage('assets/images/others/test1.jpg'),
                  ),
                  SizedBox(width: 12),
                  Padding(
                    padding: EdgeInsets.only(top: 35.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'JEM CENTINO',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '@jemllyace',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 70),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _StatItem(label: 'Posts', count: '24'),
            _StatItem(label: 'Following', count: '10'),
            _StatItem(label: 'Followers', count: '2.5k')
          ],
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String count;

  const _StatItem({required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(label),
      ],
    );
  }
}
