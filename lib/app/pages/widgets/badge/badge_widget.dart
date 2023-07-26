import 'package:flutter/material.dart';

class BadgeWidget extends StatefulWidget {
  const BadgeWidget({super.key});

  @override
  State<BadgeWidget> createState() => _BadgeWidgetState();
}

class _BadgeWidgetState extends State<BadgeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bages")),
      body: Center(
        child: Column(
          children: [
            Badge(),
          ],
        ),
      ),
    );
  }
}
