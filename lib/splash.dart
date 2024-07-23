

import 'package:flutter/material.dart';

class ESplash extends StatelessWidget {
  const ESplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.network("https://th.bing.com/th/id/R.9b1230dc8e8fbbcf1a78a4324c7829b9?rik=yHKJh1Dqs0QH2A&pid=ImgRaw&r=0")),
              const SizedBox(width: 5,),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("eGrocery" ,style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                  ),),
                  Text("your daily needs")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
