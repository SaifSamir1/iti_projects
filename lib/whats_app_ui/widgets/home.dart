import 'package:flutter/material.dart';

import 'home_body.dart';

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions:  [
            _actionIcon(Icons.camera_alt_outlined),
            _actionIcon(Icons.search),
            _actionIcon(Icons.more_vert,),

          ],
          backgroundColor: Colors.green,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: const HomeBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: const Icon(
            Icons.messenger,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

Widget _actionIcon (IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(icon,color: Colors.white,),
  );
}