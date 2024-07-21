
class MessengerChatModel {
  String? image;
  String? name;
  String? lastMessage;
  Status? status ;


  Status? fromString(String statusString) {
    switch (statusString) {
      case 'Read':
        return Status.Read;
      case 'Received':
        return Status.Received;
      case 'ReadAndReceived':
        return Status.ReadAndReceived;
      default:
        return null;
    }
  }
  MessengerChatModel.fromJson(Map json) {
    image = json["image"];
    name = json["name"];
    lastMessage = json["lastMessage"];
    status = fromString(json['status']);  }



}



enum Status {
  Read,
  Received,
  ReadAndReceived,
}


