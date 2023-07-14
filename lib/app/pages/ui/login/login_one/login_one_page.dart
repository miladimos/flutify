import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginOnePage extends StatelessWidget {
  const LoginOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Text("Login One"),
      )),
    );
  }
}
