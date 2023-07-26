import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Setting"),
                value: "setting",
              ),
            ],
            onSelected: (String value) {},
          ),
        ],
      ),
    );
  }
}
