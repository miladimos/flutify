import 'package:flutter/material.dart';

class UrlLuncher extends StatefulWidget {
  const UrlLuncher({super.key});

  @override
  State<UrlLuncher> createState() => _UrlLuncherState();
}

class _UrlLuncherState extends State<UrlLuncher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Url Luncher'),
        elevation: 4,
      ),
      body: Center(child: Text('Url luncher')),
    );
  }
}
