

import 'package:flutter/material.dart';
import 'package:lap1_project_iti/login_ui/widgets/text_form_field.dart';

class LoginTextFormFields extends StatefulWidget {
  const LoginTextFormFields({super.key});

  @override
  State<LoginTextFormFields> createState() => _LoginTextFormFieldsState();
}

class _LoginTextFormFieldsState extends State<LoginTextFormFields> {
  bool _obscureText = true;

  void _togglePasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          hintText: "your email ",
          prefixIcon: Icon(Icons.person),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          hintText: "your password",
          prefixIcon: const Icon(Icons.lock_open),
          obscureText: _obscureText,
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: _togglePasswordView,
          ),
        )
      ],
    );
  }
}

