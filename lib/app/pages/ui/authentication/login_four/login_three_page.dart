import 'package:flutter/material.dart';

class LoginThreePage extends StatelessWidget {
  const LoginThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
