import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/MainFeedWidgets/postviewer.dart';

class Mainfeedscreen extends StatelessWidget {
  Mainfeedscreen({Key? key}) : super(key: key);

  final List<String> imageUrls = [
    'assets/images/others/test1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Postviewer(imageUrl: imageUrls[index]);
        },
      ),
    );
  }
}
