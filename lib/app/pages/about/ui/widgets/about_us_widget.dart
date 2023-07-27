import 'package:flutter/material.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "This is open source app that helps flutter developers.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16, height: 1.8),
          ),
        ],
      ),
    );
  }
}
