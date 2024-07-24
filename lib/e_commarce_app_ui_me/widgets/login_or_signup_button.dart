
import 'package:flutter/material.dart';

import '../../constant.dart';

Container buildCustomButton(String title) {
  return Container(
    height: 55,
    width: double.infinity,
    decoration: BoxDecoration(
      color: defaultColor,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Center(
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
      ),
    ),
  );
}