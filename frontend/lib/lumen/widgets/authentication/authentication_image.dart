import 'package:flutter/material.dart';

class AuthenticationImage extends StatelessWidget {
  const AuthenticationImage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double itemSpacing = 12.0;

    return Container(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        spacing: itemSpacing,
        runSpacing: itemSpacing,
        children: [
          _buildTranslatedImageBox(
            'assets/images/authentication/image1.jpg',
            width: screenWidth * 0.43,
            height: screenWidth * 0.3,
            offset: Offset(screenWidth * -0.08, screenHeight * 0.02),
          ),
          _buildTranslatedImageBox(
            'assets/images/authentication/image2.jpg',
            width: screenWidth * 0.43,
            height: screenWidth * 0.3,
            offset: Offset(screenWidth * 0.03, screenHeight * 0.01),
          ),
          _buildTranslatedImageBox(
            'assets/images/authentication/image3.jpg',
            width: screenWidth * 0.43,
            height: screenWidth * 0.3,
            offset: Offset(-screenWidth * -0.01, -screenHeight * -0.03),
          ),
          _buildTranslatedImageBox(
            'assets/images/authentication/image4.jpg',
            width: screenWidth * 0.43,
            height: screenWidth * 0.3,
            offset: Offset(screenWidth * 0.10, screenHeight * 0.02),
          ),
        ],
      ),
    );
  }

  Widget _buildTranslatedImageBox(
    String path, {
    required double width,
    required double height,
    required Offset offset,
  }) {
    return Transform.translate(
      offset: offset,
      child: _buildImageBox(path, width: width, height: height),
    );
  }

  Widget _buildImageBox(
    String path, {
    required double width,
    required double height,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        path,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
