import 'package:flutter/material.dart';

class LoginThirteenPage extends StatefulWidget {
  const LoginThirteenPage({super.key});

  @override
  State<LoginThirteenPage> createState() => _LoginThirteenPageState();
}

class _LoginThirteenPageState extends State<LoginThirteenPage> {
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
