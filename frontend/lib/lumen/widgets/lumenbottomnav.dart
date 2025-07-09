import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LumenBottomnav extends StatelessWidget {
  const LumenBottomnav({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Colors.white),
              Icon(Icons.people_alt, color: Colors.white),
              CircleAvatar(
                radius: 28,
                backgroundColor: Color(0xFF339857),
                child: Icon(
                  MdiIcons.imageFilterCenterFocus,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Icon(Icons.notifications, color: Colors.white),
              Icon(Icons.person, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
