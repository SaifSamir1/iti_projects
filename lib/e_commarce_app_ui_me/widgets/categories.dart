

import 'package:flutter/material.dart';

import '../models/category_item_model.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategoryItem(
            title: categoryItems[index].title,
            image: categoryItems[index].image,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: 15,
          ),
          itemCount: 5,
        ),
      ),
    );
  }

  Widget buildCategoryItem({required String image, required String title}) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 10),
        )
      ],
    );
  }
}
