import 'package:flutter/material.dart';

import '../../constant.dart';
import '../widgets/already_have_account.dart';
import '../widgets/login_or_signup_button.dart';
import '../widgets/other_way_to_login.dart';
import '../widgets/signup_text_form_filed_sectioin.dart';

class ESignupScreen extends StatelessWidget {
  const ESignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 45, left: 32, right: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create an\naccount",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SignUpTextFormFieldsSection(),
                const SizedBox(height: 20),
                RichText(

                  text: const TextSpan(
                      text: "By clicking the ",
                      style: TextStyle(
                        color: Color(0xff676767),
                      ),
                      children: [
                        TextSpan(
                            text: "Register ",
                            style: TextStyle(
                              color: defaultColor,
                            )),
                        TextSpan(
                            text: "button, you agree to the public offer",
                            style: TextStyle(
                              height: 1.4,
                              color: Color(0xff676767),
                            )),
                      ]),
                ),
                const SizedBox(height: 40),
                buildCustomButton("Create Account"),
                const SizedBox(height: 50),
                const OtherWayToLogin(),
                const AlreadyHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
