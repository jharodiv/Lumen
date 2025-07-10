import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/lumenbottomnav.dart';
import 'package:frontend/lumen/widgets/mainlumenheader.dart';
import 'package:frontend/lumen/widgets/search/searchBar.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Mainlumenheader(),
            Expanded(
              child: Searchbar(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: LumenBottomnav(),
      ),
    );
  }
}
