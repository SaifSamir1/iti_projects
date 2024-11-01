import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';



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
        home: LoginScreen4(),
      ),
    );
  }
}
