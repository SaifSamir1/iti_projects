import 'package:flutter/material.dart';

import '../widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        title: Image.asset(
            height: 31, width: 120, "assets/images/appbar_title.png"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Image.asset(
                width: 40, height: 40, "assets/images/appbar_image.png"),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Image.asset("assets/images/leading.png"),
        ),
      ),
      body: const HomeScreenBody(),
    );
  }
}

