import 'package:flutter/material.dart';

class LoginTenPage extends StatefulWidget {
  const LoginTenPage({super.key});

  @override
  State<LoginTenPage> createState() => _LoginTenPageState();
}

class _LoginTenPageState extends State<LoginTenPage> {
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
