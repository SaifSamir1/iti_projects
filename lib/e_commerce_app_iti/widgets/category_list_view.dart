

import 'package:flutter/material.dart';

import '../../e_commarce_app_ui_me/models/category_item_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoryItemsIti.length,
        itemBuilder : (context, index) => buildCategoryItem(
          image: categoryItemsIti[index].image,
          title: categoryItemsIti[index].title,
        ),
        separatorBuilder: (context,index) => const SizedBox(width: 15,),
      ),
    );
  }

  Container buildCategoryItem({required String image, required String title}) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.indigo[50], borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
