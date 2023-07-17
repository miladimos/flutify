class ChatModel {
  final int id;
  final String avatar;
  final String username;
  final String lastMessage;
  final String date;

  ChatModel({
    required this.id,
    required this.avatar,
    required this.username,
    required this.lastMessage,
    required this.date,
  });

  static List<ChatModel> chatLists = [
    ChatModel(
      id: 1,
      avatar: "",
      username: "Milad",
      lastMessage: "lastMessage",
      date: "Mar 3",
    ),
    ChatModel(
      id: 2,
      avatar: "",
      username: "Shim",
      lastMessage: "lastMessage",
      date: "Mar 10",
    ),
    ChatModel(
      id: 3,
      avatar: "",
      username: "علی",
      lastMessage: "lastMessage",
      date: "Sep 3",
    ),
    ChatModel(
      id: 4,
      avatar: "",
      username: "Dad",
      lastMessage: "lastMessage",
      date: "Mar 31",
    ),
  ];
}
