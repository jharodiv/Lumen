import 'package:flutter/material.dart';

class ProfilePhotoGrid extends StatelessWidget {
  const ProfilePhotoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return Image.asset(
            'assets/images/test1.jpg',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
