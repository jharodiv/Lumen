import 'package:flutter/material.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Limit the height to a fraction of the screen height
    double imageHeight = screenHeight * 0.4;

    return SizedBox(
      width: screenWidth,
      height: imageHeight, // Use a fraction of the screen height
      child: Stack(
        alignment: Alignment.center,
        children: [
          // First Circle (behind the image)
          Positioned(
            top: 20,
            left: -(screenWidth * 0.15),
            child: Container(
              width: screenWidth * 0.5,
              height: screenWidth * 0.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFE7E3C3),
              ),
            ),
          ),
          // Second Circle (behind the image)
          Positioned(
            top: 0,
            right: -(screenWidth * 0.15),
            child: Container(
              width: screenWidth * 0.4,
              height: screenWidth * 0.4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green.withOpacity(0.3),
              ),
            ),
          ),
          // Image
          Positioned(
            top: 50,
            child: Image.asset(
              'assets/images/authentication/loginImage.png',
              width: screenWidth * 0.7, // Dynamically sized
              height: imageHeight * 0.6, // Dynamically sized
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
