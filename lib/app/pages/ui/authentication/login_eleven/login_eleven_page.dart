import 'package:flutter/material.dart';

class LoginElevenPage extends StatefulWidget {
  const LoginElevenPage({super.key});

  @override
  State<LoginElevenPage> createState() => _LoginElevenPageState();
}

class _LoginElevenPageState extends State<LoginElevenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(),
        ),
      ),
    );
  }
}
