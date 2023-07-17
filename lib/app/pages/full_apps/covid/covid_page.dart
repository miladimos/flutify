import 'package:flutter/material.dart';

class CovidPage extends StatefulWidget {
  const CovidPage({super.key});

  @override
  State<CovidPage> createState() => _CovidPageState();
}

class _CovidPageState extends State<CovidPage> {
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
