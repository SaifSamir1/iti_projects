
class ChatModel {
  String? image;
  String? name;
  String? lastMessage;
  String? lastMessageTime;

  ChatModel({required this.image,required this.name, required this.lastMessage, required this.lastMessageTime});

  ChatModel.fromJson(Map<String,dynamic> json){
    image = json["image"];
    name = json["name"];
    lastMessage = json["lastMessage"];
    lastMessageTime = json["lastMessageTime"];
  }

}