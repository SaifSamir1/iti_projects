
import 'package:flutter/material.dart';

import '../../constant.dart';

class OtherWayToLogin extends StatelessWidget {
  const OtherWayToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "- OR Continue with -",
          style: TextStyle(fontSize: 12, color: Color(0xff575757)),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Google.png",
              width: 54,
              height: 54,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              "assets/images/apple.png",
              width: 54,
              height: 54,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              "assets/images/Facebook.png",
              width: 54,
              height: 54,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
