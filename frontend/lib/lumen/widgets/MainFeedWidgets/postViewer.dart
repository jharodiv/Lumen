import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/MainFeedWidgets/lumen_bottomnav.dart';

class Postviewer extends StatelessWidget {
  final String imageUrl;

  const Postviewer({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // Logo
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
                  // Following | For You
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Following", style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 8),
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
                  // Icons
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

            // Image Viewer
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator());
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Footer
      bottomNavigationBar: const SafeArea(
        bottom: true,
        top: false,
        left: false,
        right: false,
        child: LumenBottomnav(),
      ),
    );
  }
}
