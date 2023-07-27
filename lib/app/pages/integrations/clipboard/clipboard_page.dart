import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClipboardPage extends StatelessWidget {
  const ClipboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipboard"),
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(Icons.copy),
          label: Text("Copy"),
          onPressed: () {
            Clipboard.setData(
              ClipboardData(text: "this is test text"),
            );
          },
        ),
      ),
    );
  }
}
