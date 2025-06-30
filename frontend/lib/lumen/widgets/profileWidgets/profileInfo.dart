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
            Positioned(
              bottom: -MediaQuery.of(context).size.height * 0.06,
              left: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage:
                        AssetImage('assets/images/others/test1.jpg'),
                  ),
                  const SizedBox(width: 12),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 16),
                      Text(
                        'Jem Centino',
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
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Edit",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF339857),
                      minimumSize: Size(120, 25), //width,height
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
