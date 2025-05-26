import 'package:flutter/material.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.4,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(top: 12, bottom: 12),
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                    leading: const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/others/testprofile.jpg'),
                    ),
                    title: Text(
                      "@user$index",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "This is a comment from user $index.",
                      style: const TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
