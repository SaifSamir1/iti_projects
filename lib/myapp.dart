import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'e_commarce_app_ui_me/screens/home_screen.dart';
import 'e_commerce_app_iti/screens/home_body.dart';
import 'e_commerce_app_iti/screens/login_screen_iti.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeBodyIti(),
      ),
    );
  }
}
