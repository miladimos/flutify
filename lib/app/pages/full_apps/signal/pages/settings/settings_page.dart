import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 40),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Username",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(
                            "this is bio",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "+98 9121233211",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text("Account"),
                  leading: Icon(Icons.account_circle_outlined),
                ),
                ListTile(
                  title: Text("Linked devices"),
                  leading: Icon(Icons.devices),
                ),
                ListTile(
                  title: Text("Donate to Signal"),
                  leading: Icon(Icons.favorite_border),
                ),
                Divider(color: Colors.grey),
                ListTile(
                  title: Text("Appearance"),
                  leading: Icon(Icons.settings),
                ),
                ListTile(
                  title: Text("Chats"),
                  leading: Icon(Icons.chat_bubble_outline),
                ),
                ListTile(
                  title: Text("Stories"),
                  leading: Icon(Icons.favorite_border),
                ),
                ListTile(
                  title: Text("Notifications"),
                  leading: Icon(Icons.notifications_outlined),
                ),
                ListTile(
                  title: Text("Privacy"),
                  leading: Icon(Icons.lock_outline),
                ),
                ListTile(
                  title: Text("Data and storage"),
                  leading: Icon(Icons.pie_chart_outline),
                ),
                Divider(color: Colors.grey),
                ListTile(
                  title: Text("Help"),
                  leading: Icon(Icons.help_outline),
                ),
                ListTile(
                  title: Text("Invite your friends"),
                  leading: Icon(Icons.mail_outline),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
