import 'package:flutter/material.dart';

class AuthenticationImage extends StatelessWidget {
  const AuthenticationImage({super.key});

  @override
  Widget build(BuildContext context) {
    double itemSpacing = 12.0;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double imageWidth = constraints.maxWidth * 0.43;
          double imageHeight = imageWidth * 0.75;

          double maxImageWidth = 160;
          double maxImageHeight = maxImageWidth * 0.75;
          return Wrap(
            spacing: itemSpacing,
            runSpacing: itemSpacing,
            children: [
              _buildTranslatedImageBox(
                'assets/images/authentication/image1.jpg',
                width: imageWidth.clamp(0, maxImageWidth),
                height: imageHeight.clamp(0, maxImageHeight),
                offset: Offset(-imageWidth * 0.1, 0),
              ),
              _buildTranslatedImageBox(
                'assets/images/authentication/image2.jpg',
                width: imageWidth.clamp(0, maxImageWidth),
                height: imageHeight.clamp(0, maxImageHeight),
                offset: Offset(imageWidth * 0.1, -imageHeight * 0.1),
              ),
              _buildTranslatedImageBox(
                'assets/images/authentication/image3.jpg',
                width: imageWidth.clamp(0, maxImageWidth),
                height: imageHeight.clamp(0, maxImageHeight),
                offset: Offset(imageWidth * 0.08, imageHeight * 0.15),
              ),
              _buildTranslatedImageBox(
                'assets/images/authentication/image4.jpg',
                width: imageWidth.clamp(0, maxImageWidth),
                height: imageHeight.clamp(0, maxImageHeight),
                offset: Offset(imageWidth * 0.4, imageHeight * 0.1),
              ),
            ],
          );
        },
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
