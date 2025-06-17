import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/profileWidgets/profileInfo.dart';
import 'package:frontend/lumen/widgets/profileWidgets/profilePhotoGrid.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text('@username'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProfileInfo(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
