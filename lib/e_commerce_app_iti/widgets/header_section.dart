


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.indigo[50],
          radius: 23,
          child: const Icon(
            (CupertinoIcons.line_horizontal_3_decrease),
            size: 25,
          ),
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: Colors.indigo[50],
          radius: 23,
          child: const Icon(
            (Icons.shopping_bag_outlined),
            size: 28,
          ),
        ),
      ],
    );
  }
}
