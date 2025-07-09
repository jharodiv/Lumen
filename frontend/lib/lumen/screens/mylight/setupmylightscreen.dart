import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/mainlumenheader.dart';
import 'package:frontend/lumen/widgets/mylightwidgets/setupmylight.dart';

class Setupmylightscreen extends StatelessWidget {
  const Setupmylightscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Mainlumenheader(),
          Expanded(
            child: Setupmylight(),
          )
        ],
      )),
    );
  }
}
