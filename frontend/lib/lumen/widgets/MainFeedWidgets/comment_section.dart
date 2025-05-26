import 'package:flutter/material.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          // Drag handle
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/others/testprofile.jpg'),
                  ),
                  title: Text(
                    "User$index",
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    "Nice post!",
                    style: TextStyle(color: Colors.white70),
                  ),
                );
              },
            ),
          ),

          const Divider(color: Colors.white12),

          // Input field
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundImage:
                      AssetImage('assets/images/others/testprofile.jpg'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      hintText: "Add a comment...",
                      hintStyle: const TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.white),
                  onPressed: () {
                    // Send comment logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
