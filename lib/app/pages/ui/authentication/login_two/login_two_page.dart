import 'package:flutter/material.dart';

class LoginTwoPage extends StatefulWidget {
  const LoginTwoPage({super.key});

  @override
  State<LoginTwoPage> createState() => _LoginTwoPageState();
}

class _LoginTwoPageState extends State<LoginTwoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Container(),
        ),
      ),
    );
  }
}
