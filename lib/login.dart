import 'package:flutter/material.dart';

class LoginScreen4 extends StatelessWidget {
  const LoginScreen4({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 100,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              FormField(isPassword: false, text: "Phone Number"),
              SizedBox(
                height: 20,
              ),
              FormField(
                text: "Password",
                isPassword: true,
              ),
              FormField(
                text: "Password",
                isPassword: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FormField extends StatefulWidget {
  const FormField({super.key, required this.text, required this.isPassword});

  final String text;
  final bool isPassword;

  @override
  State<FormField> createState() => _FormFieldState();
}

class _FormFieldState extends State<FormField> {
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: const TextStyle(fontSize: 14, color: Color(0xFF8B8B97)),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.grey[200]),
          child: TextFormField(
            obscureText: isSecure,
            decoration: InputDecoration(
              suffixIcon: widget.isPassword
                  ? InkWell(
                  onTap: () {
                    isSecure = !isSecure;
                    setState(() {});
                  },
                  child: Icon(isSecure == true
                      ? Icons.remove_red_eye
                      : Icons.visibility_off_outlined))
                  : null,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
