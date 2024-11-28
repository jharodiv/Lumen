import 'package:flutter/material.dart';

class Loginimage extends StatelessWidget {
  const Loginimage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth, // Make the parent SizedBox match screen width
      height: screenHeight, // Make the parent SizedBox match screen height
      child: Stack(
        alignment: Alignment.center, // Centers all the children in the stack
        children: [
          // First Circle (behind the image) with custom color
          Positioned(
            top: 100, // Adjust this to position the circle lower or higher
            left: -(screenWidth * 0.25), // Move the circle left to reach the edge
            child: Container(
              width: screenWidth, // Circle size set to screen width
              height: screenWidth, // Circle size set to screen width
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Makes it a circle
                color: Color(0xFFE7E3C3), // Custom beige color
              ),
            ),
          ),
          // Second Circle (behind the image)
          Positioned(
            top: 0, // Adjust this to position the circle higher or lower
            right: -(screenWidth * 0.25), // Move the circle right to reach the edge
            child: Container(
              width: screenWidth, // Circle size set to screen width
              height: screenWidth, // Circle size set to screen width
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Makes it a circle
                color: Colors.green.withOpacity(0.3), // Green color with some opacity
              ),
            ),
          ),
          // Image at the top (on top of the circles)
          Positioned(
            top: 150, // Position image slightly downwards so it doesn't overlap the top circle
            child: Image.asset(
              'assets/images/authentication/loginImage.png',
              width: screenWidth * 0.6, // Reduced image width
              height: screenHeight * 0.4, // Reduced image height
              fit: BoxFit.contain, // Maintain aspect ratio
            ),
          ),
        ],
      ),
    );
  }
}
