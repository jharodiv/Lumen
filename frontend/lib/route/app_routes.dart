import 'package:flutter/material.dart';
import 'package:frontend/lumen/screens/splashscreen.dart';
import 'package:frontend/lumen/screens/profileScreens/profileScreen.dart';
import 'package:frontend/lumen/screens/MainFeed/mainfeedScreen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String profile = '/profile';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const Splashscreen(),
    home: (context) => Mainfeedscreen(),
    profile: (context) => const ProfileScreen(),
  };
}
