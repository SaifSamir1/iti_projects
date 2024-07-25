

import 'package:flutter/material.dart';

import '../models/main_list_item_model.dart';

class ItemsGridView extends StatelessWidget {
  const ItemsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: mainList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.55,
        crossAxisSpacing: 7,
      ),
      itemBuilder: (context, index) => buildMainItem(
        image: mainList[index].image,
        title: mainList[index].title,
        price: mainList[index].price,
        description: mainList[index].description,
      ),
    );
  }

  Widget buildMainItem({
    required String image,
    required String title,
    required String price,
    required String description,
  }) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.favorite_outline,color: Colors.black87,)),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              description,
              style: const TextStyle(fontSize: 10, height: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "\$ $price",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
