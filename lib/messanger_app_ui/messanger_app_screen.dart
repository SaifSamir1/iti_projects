import 'package:flutter/material.dart';
import 'package:lap1_project_iti/messanger_app_ui/widgets/messenger_app_bar.dart';

import '../constant.dart';
import 'model/messanger_chat_model.dart';

class MessengerAppScreen extends StatelessWidget {
  const MessengerAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMessengerAppBar(),
      body: const MessengerAppScreenBody(),
    );
  }

  Widget _actionIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}

class MessengerAppScreenBody extends StatelessWidget {
  const MessengerAppScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<MessengerChatModel> chats = apiMessengerData.map((e) => MessengerChatModel.fromJson(e)).toList();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            buildSearchWidget(),
            const SizedBox(height: 20,),
            SizedBox(
              height: 70,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) => CircularItem(image: chats[index].image!,) ,
                  separatorBuilder: (context,index) => const SizedBox(width: 20,),
                  itemCount: chats.length
              ),
            ),
            const SizedBox(height: 20,),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: chats.length,
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.black12,
                  height: 25,
                ),
                itemBuilder: (context, index) {
                  return MessengerChatItem(
                    image: chats[index].image!,
                    name: chats[index].name!,
                    lastMessage: chats[index].lastMessage!, status: chats[index].status!,
                  );
                })
          ],
        ),
      ),
    );
  }

  Container buildSearchWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(
            width: 10,
          ),
          Text(
            "Search",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          )
        ],
      ),
    );
  }
}

class CircularItem extends StatelessWidget {
  const CircularItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 35,
      child: CircleAvatar(
        radius: 33,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(image),
        ),
      ),
    );
  }
}



class MessengerChatItem extends StatelessWidget {
  const MessengerChatItem(
      {super.key,
        required this.image,
        required this.name,
        required this.lastMessage, required this.status,});

  final String image;
  final String name;
  final String lastMessage;
  final Status status;
  @override
  Widget build(BuildContext context) {
    Icon icon;
    if (status == Status.ReadAndReceived) {
      icon = const Icon(Icons.check_circle, color: Colors.blue);
    } else if (status == Status.Received) {
      icon = const Icon(Icons.check, color: Colors.blue);
    } else if (status == Status.Read) {
      icon = const Icon(Icons.check_circle_outline, color: Colors.blue);
    } else {
      icon = const Icon(Icons.error, color: Colors.grey);
    }
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
        icon,
      ],
    );
  }
}
