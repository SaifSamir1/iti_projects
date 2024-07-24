

import 'package:flutter/material.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 190,
          width: 343,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            "assets/images/good_price.png",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "50-40% OFF",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                "Now in (product)\nAll colours",
                style:
                TextStyle(fontSize: 12, color: Colors.white, height: 1.6),
              ),
              const SizedBox(height: 20,),
              Container(
                width: 100,
                height: 32,
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Shop Now',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_forward,size: 18,color: Colors.white,),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
