import 'package:flutify/app/pages/about/ui/about_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // ListTile(
          //   title: Text("Source Code"),
          //   leading: Icon(Icons.source),
          // ),
          // ListTile(
          //   title: Text("Dark theme"),
          //   leading: Icon(Icons.light_mode),
          //   trailing: Switch(value: false, onChanged: null),
          // ),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info),
            onTap: () => Get.to(AboutPage()),
          ),
          const AboutListTile(
            icon: Icon(Icons.verified),
            child: Text("Fluttify"),
            applicationName: 'Fluttify - flutter kit',
            applicationVersion: '0.1.0',
            applicationLegalese: "a flutter app for flutter developers",
          )
        ],
      ),
    );
  }
}
