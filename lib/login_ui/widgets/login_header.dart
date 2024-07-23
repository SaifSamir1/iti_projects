
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Enter a beautiful world",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
