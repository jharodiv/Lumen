import 'package:flutter/material.dart';

class Profilegrid extends StatelessWidget {
  final List<String> photos;

  const Profilegrid({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: photos.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.grey[300],
            child: Image.asset(
              photos[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
