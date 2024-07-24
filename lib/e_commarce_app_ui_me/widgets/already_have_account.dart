
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../screens/e_login_screen.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "I Already Have an Account ",
          style: TextStyle(fontSize: 14, color: Color(0xff575757)),
        ),
        InkWell(
          onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ELoginScreen(),
              ),
            );
          },
          child: const Text(
            "Login",
            style: TextStyle(
                fontSize: 14,
                color: defaultColor,
                decoration: TextDecoration.underline,
                decorationColor: defaultColor
            ),
          ),
        )
      ],
    );
  }
}