import 'package:flutter/material.dart';

class Postviewer extends StatelessWidget {
  final String imageUrl;

  const Postviewer({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          padding: const EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Following", style: TextStyle(color: Colors.grey)),
              SizedBox(width: 20),
              Text("For You",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AspectRatio(
                aspectRatio: 9 / 16,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    return progress == null
                        ? child
                        : const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('@username',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('This is a caption example....',
                  style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite_border, color: Colors.white),
            SizedBox(height: 8),
            Icon(Icons.comment, color: Colors.white),
            SizedBox(height: 8),
            Icon(Icons.share, color: Colors.white),
          ],
        )
      ],
    );
  }
}
