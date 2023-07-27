import 'package:flutter/material.dart';

class UrlLauncher extends StatefulWidget {
  const UrlLauncher({super.key});

  @override
  State<UrlLauncher> createState() => _UrlLauncherState();
}

class _UrlLauncherState extends State<UrlLauncher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Url Launcher'),
        elevation: 4,
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text("SMS"),
            )
          ],
        ),
      ),
    );
  }
}
