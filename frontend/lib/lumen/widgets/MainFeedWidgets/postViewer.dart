import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/MainFeedWidgets/comment_section.dart';
import 'package:frontend/lumen/widgets/MainFeedWidgets/lumen_bottomnav.dart';
import 'package:frontend/lumen/widgets/MainFeedWidgets/share_section.dart';

class Postviewer extends StatelessWidget {
  final String imageUrl;

  const Postviewer({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showComments() {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => const CommentSection(),
      );
    }

    void _showShareOptions() {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => const ShareSection(),
      );
    }

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
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.chat_bubble_outline,
                            color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    children: [
                      // Image
                      Positioned.fill(
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),

                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.transparent, Colors.black87],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 12, left: 12, right: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundImage: AssetImage(
                                                'assets/images/others/testprofile.jpg')
                                            as ImageProvider,
                                      ),
                                      SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "@username",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              "Test Caption - Kawu",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Column(
                                      children: [
                                        Icon(Icons.favorite_border,
                                            color: Colors.white, size: 28),
                                        SizedBox(height: 4),
                                        Text("120",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12)),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Column(
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                              Icons.comment_outlined,
                                              color: Colors.white,
                                              size: 28),
                                          onPressed: _showComments,
                                        ),
                                        const SizedBox(height: 4),
                                        const Text("32",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12)),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: _showShareOptions,
                                          icon: const Icon(Icons.share_outlined,
                                              color: Colors.white, size: 28),
                                        ),
                                        const SizedBox(height: 4),
                                        const Text("15",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
