import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lap1_project_iti/whats_app_ui/widgets/sitting_item.dart';


import '../../constant.dart';
import '../models/chat_model.dart';
import 'chat_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChatModel> chats = apiData.map((e) => ChatModel.fromJson(e)).toList();
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const SittingItem(text: "Locked Chats", icon: Icons.lock),
          const SizedBox(height: 15,),
          const SittingItem(text: "Archive Chats", icon: Icons.archive),
          const SizedBox(height: 20,),
          ListView.separated(
            shrinkWrap: true,
              itemCount: chats.length,
              separatorBuilder: (context, index) => const Divider(
                    color: Colors.black12,
                height: 25,
                  ),
              itemBuilder: (context, index) {
                return ChatItem(
                  image: chats[index].image!,
                  name: chats[index].name!,
                  lastMessage: chats[index].lastMessage!,
                  lastMessageTime: chats[index].lastMessageTime!,
                );
              })
        ],
      ),
    );
  }
}


