import 'package:flutify/app/pages/full_apps/signal/models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatItemWidget extends StatelessWidget {
  final ChatModel chatModel;

  ChatItemWidget({super.key, required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: [
                CircleAvatar(radius: 25),
                const SizedBox(width: 20),
                Text(
                  chatModel.username,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(chatModel.date),
                Text(chatModel.lastMessage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
