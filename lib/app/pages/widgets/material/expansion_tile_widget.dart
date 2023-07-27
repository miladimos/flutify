import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExpansionTile(
          title: Text("This is title"),
          children: [
            ListTile(title: Text("This is first")),
            ListTile(title: Text("This is two")),
            ListTile(title: Text("This is three")),
          ],
        ),
      ),
    );
  }
}
