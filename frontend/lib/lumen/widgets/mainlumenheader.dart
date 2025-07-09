import 'package:flutter/material.dart';

class Mainlumenheader extends StatelessWidget {
  const Mainlumenheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const Expanded(child: SizedBox()),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  //IconFunction
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  //IconFunction
                },
                icon:
                    const Icon(Icons.chat_bubble_outline, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
