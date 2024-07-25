import 'package:flutter/material.dart';
import 'package:lap1_project_iti/login_ui/widgets/text_form_fieldes_section.dart';

import '../../e_commarce_app_ui_me/widgets/login_or_signup_button.dart';
import '../widgets/login_screen_iti_body.dart';

class LoginScreenIti extends StatelessWidget {
  const LoginScreenIti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      appBar: AppBar(
        backgroundColor: const Color(0xffFEFEFE),
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
        title: const Text(
          "Account Login",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
      ),
      body: const LoginScreenItiBody(),
    );
  }
}

