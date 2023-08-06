import 'package:flutter/material.dart';

class ChangeLogWidget extends StatelessWidget {
  const ChangeLogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Changelogs:",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "v0.1.0",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
