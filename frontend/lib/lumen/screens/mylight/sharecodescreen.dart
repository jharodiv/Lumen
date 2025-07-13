import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/mainlumenheader.dart';
import 'package:frontend/lumen/widgets/mylightwidgets/sharecode.dart';

class Sharecodescreen extends StatelessWidget {
  const Sharecodescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Mainlumenheader(),
          Expanded(
            child: Sharecode(),
          )
        ],
      )),
    );
  }
}
