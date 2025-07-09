import 'package:flutter/material.dart';
import 'package:frontend/lumen/screens/profileScreens/profileGrid.dart';
import 'package:frontend/lumen/widgets/lumenbottomnav.dart';
import 'package:frontend/lumen/widgets/profileWidgets/profileInfo.dart';
import 'package:frontend/lumen/widgets/profileWidgets/profilePhotoGrid.dart';
import 'package:frontend/repositories/photoRepositories.dart';
import 'package:frontend/repositories/tempoPhotoRepo.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final Photorepositories photorepositories = Tempophotorepo();
  List<String> photos = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadPhotos();
  }

  Future<void> loadPhotos() async {
    final fetchedPhotos = await photorepositories.fetchPhotos();
    setState(() {
      photos = fetchedPhotos;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileInfo(),
            const Divider(),
            Profilegrid(photos: photos),
          ],
        ),
      ),
      bottomNavigationBar:
          const SafeArea(bottom: true, child: LumenBottomnav()),
    );
  }
}
