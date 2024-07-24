import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'e_login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color _scaffoldBackgroundColor = Colors.white;
  Timer? timer;

  void _toggleColor() {
    setState(() {
      _scaffoldBackgroundColor =
      _scaffoldBackgroundColor == Colors.white ? Colors.black12 : Colors.white;
      _updateStatusBarColor(_scaffoldBackgroundColor);
    });
  }

  void _updateStatusBarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color,
    ));
  }


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10)).then((v) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ELoginScreen(),
        ),
      );
    });
    timer = Timer.periodic(const Duration(seconds: 5), (Timer t) {
      _toggleColor();
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _scaffoldBackgroundColor,
      body: const SplashScreenBody(),
    );
  }
}

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/images/spalsh_photo.png"),
    );
  }
}
