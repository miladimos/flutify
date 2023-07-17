import 'package:flutify/app/pages/full_apps/signal/models/chat_model.dart';
import 'package:flutify/app/pages/full_apps/signal/widgets/chat_item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var chatList = ChatModel.chatLists;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: (context, index) {
            return ChatItemWidget(chatModel: chatList[index]);
          },
        ),
      ),
    );
  }
}
