import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
        required this.hintText,
        this.prefixIcon,
        this.suffixIcon,
        this.obscureText});

  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: TextFormField(
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: prefixIcon,
              hintText: hintText,
              suffixIcon: suffixIcon ?? const SizedBox()),
        ),
      ),
    );
  }
}
