import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          ListTile(
            title: Text("Source Code"),
            leading: Icon(Icons.source),
          ),
          ListTile(
            title: Text("Dark theme"),
            leading: Icon(Icons.light_mode),
            trailing: Switch(value: false, onChanged: null),
          ),
          AboutListTile(
            icon: Icon(Icons.info),
            child: Text("About Fluttify"),
            applicationName: 'Fluttify - flutter kit',
            applicationVersion: '0.1.0',
          )
        ],
      ),
    );
  }
}
