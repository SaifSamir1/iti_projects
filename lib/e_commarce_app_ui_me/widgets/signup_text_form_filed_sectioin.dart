


import 'package:flutter/material.dart';

import '../../login_ui/widgets/text_form_field.dart';

class SignUpTextFormFieldsSection extends StatefulWidget {
  const SignUpTextFormFieldsSection({super.key});

  @override
  State<SignUpTextFormFieldsSection> createState() => _SignUpTextFormFieldsSectionState();
}

class _SignUpTextFormFieldsSectionState extends State<SignUpTextFormFieldsSection> {
  bool _obscureText = true;
  bool _obscureText2 = true;

  void _togglePasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  void _togglePasswordView2() {
    setState(() {
      _obscureText2 = !_obscureText2;
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
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          hintText: "Confirm Password",
          prefixIcon: const Icon(Icons.lock_open),
          obscureText: _obscureText2,
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText2 ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: _togglePasswordView2,
          ),
        ),
      ],
    );
  }
}
