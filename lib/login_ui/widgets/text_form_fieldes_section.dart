

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email Address",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey[600]),),
        const SizedBox(height: 5,),
        const CustomTextFormField(
          hintText: " ",
        ),
        const SizedBox(
          height: 20,
        ),
        Text("Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey[600]),),
        const SizedBox(height: 5,),
        CustomTextFormField(
          hintText: "",
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

