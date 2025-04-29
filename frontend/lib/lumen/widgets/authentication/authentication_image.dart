import 'package:flutter/material.dart';

class AuthenticationImage extends StatelessWidget {
  const AuthenticationImage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.all(16),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.2,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _buildImage('assets/images/authentication/image1.jpg'),
          _buildImage('assets/images/authentication/image2.jpg'),
          _buildImage('assets/images/authentication/image3.jpg'),
          _buildImage('assets/images/authentication/image4.jpg'),
        ],
      ),
    );
  }

  Widget _buildImage(String path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }
}
