

import 'package:flutter/material.dart';

import '../models/main_list_item_model.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: mainList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
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
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              height: 200,
              fit: BoxFit.cover,
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
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(5, (index) {
                return const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 17,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
