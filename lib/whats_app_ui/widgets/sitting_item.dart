

import 'package:flutter/material.dart';

class SittingItem extends StatelessWidget {
  const SittingItem({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.green,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(text),
      ],
    );
  }
}
