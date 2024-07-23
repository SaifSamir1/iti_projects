

import 'package:flutter/material.dart';
import 'package:lap1_project_iti/login_ui/widgets/text_form_field.dart';

class TextFormFields extends StatefulWidget {
  const TextFormFields({super.key});

  @override
  State<TextFormFields> createState() => _TextFormFieldsState();
}

class _TextFormFieldsState extends State<TextFormFields> {
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
          prefixIcon: Icon(Icons.email_outlined),
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
