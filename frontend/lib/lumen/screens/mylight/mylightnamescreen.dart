import 'package:flutter/material.dart';
import 'package:frontend/lumen/widgets/mainlumenheader.dart';
import 'package:frontend/lumen/widgets/mylightwidgets/mylightname.dart';

class MyLightnamescreen extends StatelessWidget {
  const MyLightnamescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Mainlumenheader(),
          Expanded(
            child: Mylightname(),
          ),
        ],
      )),
    );
  }
}
