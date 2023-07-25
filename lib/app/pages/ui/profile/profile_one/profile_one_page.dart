import 'package:flutter/material.dart';

class ProfileOnePage extends StatefulWidget {
  const ProfileOnePage({super.key});

  @override
  State<ProfileOnePage> createState() => _ProfileOnePageState();
}

class _ProfileOnePageState extends State<ProfileOnePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
