import 'package:flutter/material.dart';

class AuthenticationImage extends StatelessWidget {
  const AuthenticationImage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double imageHeight = screenHeight * 0.4;

    return SizedBox(
      width: screenWidth,
      height: imageHeight,
      child: TweenAnimationBuilder<Offset>(
        tween: Tween<Offset>(
          begin: Offset.zero,
          end: Offset(-1.0, 0),
        ),
        duration:
            const Duration(seconds: 10), // Set animation duration to 10 seconds
        curve: Curves.linear,
        onEnd: () {
          // When animation ends, restart it to create a loop effect
          build(context);
        },
        builder: (BuildContext context, Offset value, Widget? child) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Transform.translate(
              offset: value,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // First image slot
                  Image.asset(
                    'assets/images/authentication/image1.jpg', // Replace with your image
                    width:
                        screenWidth * 0.5, // Adjusted width to fit the design
                    height: imageHeight,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10), // Space between images
                  Image.asset(
                    'assets/images/authentication/image2.jpg', // Replace with your image
                    width:
                        screenWidth * 0.5, // Adjusted width to fit the design
                    height: imageHeight,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/images/authentication/image3.jpg', // Replace with your image
                    width:
                        screenWidth * 0.5, // Adjusted width to fit the design
                    height: imageHeight,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/images/authentication/image4.jpg', // Replace with your image
                    width:
                        screenWidth * 0.5, // Adjusted width to fit the design
                    height: imageHeight,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
