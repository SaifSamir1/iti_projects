
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(
      {super.key,
        required this.image,
        required this.name,
        required this.lastMessage,
        required this.lastMessageTime});

  final String image;
  final String name;
  final String lastMessage;
  final String lastMessageTime;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(image),
          radius: 25,
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 5),
            Text(
              lastMessage,
              style: const TextStyle(color: Colors.grey),
            ),

          ],
        ),
        const Spacer(),
        Text(
          lastMessageTime,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
