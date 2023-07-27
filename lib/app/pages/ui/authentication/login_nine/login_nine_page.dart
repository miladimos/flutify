import 'package:flutter/material.dart';

class LoginNinePage extends StatefulWidget {
  const LoginNinePage({super.key});

  @override
  State<LoginNinePage> createState() => _LoginNinePageState();
}

class _LoginNinePageState extends State<LoginNinePage> {
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
