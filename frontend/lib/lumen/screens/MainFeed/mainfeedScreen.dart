import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/MainFeedWidgets/postViewer.dart';

class Mainfeedscreen extends StatelessWidget {
  Mainfeedscreen({Key? key}) : super(key: key);

  final List<String> imageUrls = [
    'https://picsum.photos/id/1018/800/1600',
    'https://picsum.photos/id/1025/800/1600',
    'https://picsum.photos/id/1020/800/1600',
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
