import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/login_or_signup_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GetStartedScreenBody(),
    );
  }
}

class GetStartedScreenBody extends StatelessWidget {
  const GetStartedScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          child: Image.asset(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height,
            "assets/images/clothes_get_started.png",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                textAlign: TextAlign.center,
                "You want\n Authentic, here\n you go!",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Find it here, buy it now!",
                style: TextStyle(fontSize: 14, color: Color(0xffF2F2F2)),
              ),
              const SizedBox(height: 40,),
               buildCustomButton("Get Started"),
            ],
          ),
        )
      ],
    );
  }
}
