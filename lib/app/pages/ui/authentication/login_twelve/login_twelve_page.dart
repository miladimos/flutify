import 'package:flutter/material.dart';

class LoginTwelvePage extends StatefulWidget {
  const LoginTwelvePage({super.key});

  @override
  State<LoginTwelvePage> createState() => _LoginTwelvePageState();
}

class _LoginTwelvePageState extends State<LoginTwelvePage> {
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
