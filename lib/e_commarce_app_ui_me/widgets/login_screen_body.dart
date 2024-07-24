
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../login_ui/widgets/text_form_fieldes_section.dart';
import 'dont_have_account.dart';
import 'login_or_signup_button.dart';
import 'other_way_to_login.dart';

class ELoginScreenBody extends StatelessWidget {
  const ELoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 45, left: 32, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome\nBack!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const LoginTextFormFields(),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "forget password?",
                    style: TextStyle(color: defaultColor),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              buildCustomButton("Login"),
              const SizedBox(height: 50),
              const OtherWayToLogin(),
              const DontHaveAccount(),
            ],
          ),
        ),
      ),
    );
  }


}
