

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lap1_project_iti/api_test/user_model.dart';

class UsersNames extends StatefulWidget {
  const UsersNames({super.key});

  @override
  State<UsersNames> createState() => _UsersNamesState();
}

class _UsersNamesState extends State<UsersNames> {
  final Dio dio = Dio();
  List<User> users = [];

  @override
  void initState() {
    getHttp();
    super.initState();
  }
  void getHttp ()async {
    final response = await dio.get("https://jsonplaceholder.typicode.com/users");
    List tempList = response.data;
    // print(tempList);
    users = tempList.map((e)=> User.fromJson(e)).toList();
    print(users[1].name);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Users",style: TextStyle(fontSize: 30),),
            Expanded(
              child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context,index ){
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Item(name: users[index].name!),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({super.key, required this.name});
final String name;
  @override
  Widget build(BuildContext context) {
    return Text(name,style: const TextStyle(fontSize: 15),);
  }
}
