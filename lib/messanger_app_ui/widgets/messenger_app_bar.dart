

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildMessengerAppBar() {
  return AppBar(
    leading: const Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        backgroundImage: NetworkImage("https://images.vexels.com/media/users/3/145908/raw/52eabf633ca6414e60a7677b0b917d92-male-avatar-maker.jpg"),
      ),
    ),
    title: const Text(
      "Chats",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Row(
          children: [
            Icon(CupertinoIcons.camera),
            SizedBox(
              width: 20,
            ),
            Icon(CupertinoIcons.app_badge_fill),
          ],
        ),
      ),
    ],
  );
}