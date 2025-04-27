import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/myspaceStartup/createstartup.dart';
import 'package:frontend/lumen/widgets/myspaceStartup/joinstartup.dart';

class SpacestartupScreen extends StatelessWidget {
  const SpacestartupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Createstartup(),
          ),
          Positioned(
            top: 65,
            left: 0,
            right: 0,
            child: Joinstartup(),
          ),
        ],
      ),
    );
  }
}
