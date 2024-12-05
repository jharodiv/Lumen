import 'package:flutter/material.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double imageHeight = screenHeight * 0.5;

    return SizedBox(
      width: screenWidth,
      height: imageHeight,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 10,
            left: -(screenWidth * 0.1),
            child: Container(
              width: screenWidth * 0.4,
              height: screenWidth * 0.4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFE7E3C3),
              ),
            ),
          ),
          Positioned(
            top: 290,
            right: -(screenWidth * 0.1),
            child: Container(
              width: screenWidth * 0.35,
              height: screenWidth * 0.35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.greenAccent,
              ),
            ),
          ),
          Positioned(
            top: 5,
            child: Image.asset(
              'assets/images/authentication/loginImage.png',
              width: screenWidth * 1.1,
              height: imageHeight,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
