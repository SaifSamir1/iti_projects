import 'package:flutter/material.dart';
import 'categories.dart';
import 'home_header.dart';
import 'items_list_view.dart';
import 'offer_widget.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Search any Product..",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.keyboard_voice_sharp),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const HomeHeader(),
            const SizedBox(
              height: 15,
            ),
            const Categories(),
            const SizedBox(
              height: 15,
            ),
            const OfferWidget(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "The Main Items",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 15,
            ),
            const ItemsListView(),
          ],
        ),
      ),
    );
  }
}

