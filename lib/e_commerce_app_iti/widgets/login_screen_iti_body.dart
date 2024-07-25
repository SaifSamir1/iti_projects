
import 'package:flutter/material.dart';

import '../../e_commarce_app_ui_me/widgets/login_or_signup_button.dart';
import '../../login_ui/widgets/text_form_fieldes_section.dart';

class LoginScreenItiBody extends StatelessWidget {
  const LoginScreenItiBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 40, right: 25),
              child: Image.asset("assets/images/login_iti_icon.jpg"),
            ),
            const SizedBox(
              height: 15,
            ),
            const LoginTextFormFields(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.check_box,color: Colors.green[700],size: 19,),
                const SizedBox(width: 5,),
                Text(
                  "Remember me",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
                const Spacer(),
                Text(
                  "forget password?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            buildCustomButton("Login",Colors.green[700]),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have an Account ? ",
                    style: TextStyle(color: Colors.grey[600])),
                Text("Register",
                    style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green[700])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
