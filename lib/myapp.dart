

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lap1_project_iti/messanger_app_ui/messanger_app_screen.dart';
import 'package:lap1_project_iti/whats_app_ui/widgets/home.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Set your desired color here
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MessengerAppScreen(),
      ),
    );
  }
}