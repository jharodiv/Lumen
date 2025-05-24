import 'package:flutter/material.dart';

class Postviewer extends StatelessWidget {
  final String imageUrl;

  const Postviewer({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                SizedBox(
                  width: 96,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/images/others/temporarylogo.png',
                      height: 32,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Following", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 8),
                      // Vertical divider
                      SizedBox(
                        height: 16,
                        child: VerticalDivider(
                          color: Colors.white54,
                          thickness: 1,
                          width: 20,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "For You",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search, color: Colors.white),
                      onPressed: () {
                        // TODO: Navigate to Search screen
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.chat_bubble_outline,
                          color: Colors.white),
                      onPressed: () {
                        // TODO: Navigate to Chat screen
                      },
                    ),
                  ],
                ),
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
                Text(
                  '@username',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  'This is a caption example...',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite_border, color: Colors.white),
                SizedBox(height: 8),
                Icon(Icons.comment, color: Colors.white),
                SizedBox(height: 8),
                Icon(Icons.share, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
