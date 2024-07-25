
import 'package:flutter/material.dart';

import '../../e_commarce_app_ui_me/models/category_item_model.dart';
import '../../e_commarce_app_ui_me/models/main_list_item_model.dart';
import '../../e_commarce_app_ui_me/widgets/items_list_view.dart';
import '../widgets/category_list_view.dart';
import '../widgets/header_section.dart';
import '../widgets/search_section.dart';

class HomeBodyIti extends StatelessWidget {
  const HomeBodyIti({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 90.0, left: 25, right: 25),
        child: HomeBodyItiBody(),
      ),
    );
  }
}

class HomeBodyItiBody extends StatelessWidget {
  const HomeBodyItiBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderSection(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Hello",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Welcome to Laza.",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          SearchSection(),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Choose Brand",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Text("View All", style: TextStyle(color: Colors.grey, fontSize: 15))
            ],
          ),
          SizedBox(
            height: 14,
          ),
          CategoriesListView(),
          SizedBox(
            height: 14,
          ),
          Row(
            children: [
              Text(
                "New Arraival",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Text("View All", style: TextStyle(color: Colors.grey, fontSize: 15))
            ],
          ),
          SizedBox(height: 15,),
          ItemsGridView()
        ],
      ),
    );
  }
}
