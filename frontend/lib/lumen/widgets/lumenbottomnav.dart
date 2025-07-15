import 'package:flutter/material.dart';
import 'package:frontend/lumen/screens/MainFeed/mainfeedScreen.dart';
import 'package:frontend/lumen/screens/profileScreens/profileScreen.dart';
import 'package:frontend/route/app_routes.dart';
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.home);
                },
                child: const Icon(Icons.home, color: Colors.white),
              ),
              const Icon(Icons.people_alt, color: Colors.white),
              const CircleAvatar(
                radius: 28,
                backgroundColor: Color(0xFF339857),
                child: Icon(
                  MdiIcons.imageFilterCenterFocus,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const Icon(Icons.notifications, color: Colors.white),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.profile);
                },
                child: const Icon(Icons.person, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
