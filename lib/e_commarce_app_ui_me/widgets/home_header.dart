
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "All Featured",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        buildHeaderSmallWidget("Sort", CupertinoIcons.arrow_up_arrow_down),
        const SizedBox(
          width: 10,
        ),
        buildHeaderSmallWidget("Filter", Icons.filter_alt_outlined),
      ],
    );
  }

  Container buildHeaderSmallWidget(String text, IconData icon) {
    return Container(
      height: 23,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$text ",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Icon(
            icon,
            size: 16,
          )
        ],
      ),
    );
  }
}
