import 'package:flutter/material.dart';
import '../../constant.dart';
import '../screens/e_signup_screen.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Create An Account",
          style: TextStyle(fontSize: 14, color: Color(0xff575757)),
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ESignupScreen(),
              ),
            );
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 14,
                color: defaultColor,
                decoration: TextDecoration.underline,
                decorationColor: defaultColor),
          ),
        )
      ],
    );
  }
}
