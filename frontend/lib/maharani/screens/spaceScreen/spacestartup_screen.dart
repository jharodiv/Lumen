import 'package:flutter/material.dart';
import 'package:frontend/maharani/widgets/myspaceStartup/createstartup.dart';
import 'package:frontend/maharani/widgets/myspaceStartup/joinstartup.dart';

class SpacestartupScreen extends StatelessWidget {
  const SpacestartupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Joinstartup(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Createstartup(),
          ),
        ],
      ),
    );
  }
}
