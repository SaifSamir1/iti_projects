import 'package:flutter/material.dart';

import '../widgets/login_screen_body.dart';


class ELoginScreen extends StatelessWidget {
  const ELoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ELoginScreenBody(),
    );
  }
}


