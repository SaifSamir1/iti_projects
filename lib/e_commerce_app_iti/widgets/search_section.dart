import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 55,
          width: 270,
          decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 19,
                      fontWeight: FontWeight.w400),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.withOpacity(.9),
                borderRadius: BorderRadius.circular(13)),
            height: 55,
            width: 55,
            child: const Icon(
              CupertinoIcons.mic,
              color: Colors.white,
              size: 30,
            ))
      ],
    );
  }
}
