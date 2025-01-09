import 'package:flutter/material.dart';
import 'package:frontend/maharani/widgets/myspaceStartup/createstartup.dart';
import 'package:frontend/maharani/widgets/myspaceStartup/joinstartup.dart';

class JoinSpaceStartUp extends StatelessWidget {
  const JoinSpaceStartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // JoinStartup widget at the top
          Expanded(
            flex: 1,
            child: Joinstartup(),
          ),
          // Createstartup widget at the bottom
          Expanded(
            flex: 1,
            child: Createstartup(),
          ),
        ],
      ),
    );
  }
}
