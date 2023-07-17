import 'package:flutify/app/pages/full_apps/signal/pages/home/home_page.dart';
import 'package:flutify/app/pages/full_apps/signal/pages/settings/settings_page.dart';
import 'package:flutter/material.dart';

class SignalPage extends StatefulWidget {
  const SignalPage({super.key});

  @override
  State<SignalPage> createState() => _SignalPageState();
}

class _SignalPageState extends State<SignalPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        // textTheme: Theme.of(context).textTheme.apply(
        //   bodyColor: kSHBTextColor,
        // ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "Signal",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            actions: const [
              IconButton(icon: Icon(Icons.search), onPressed: null),
              IconButton(icon: Icon(Icons.settings), onPressed: null),
            ],
            leading: GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage())),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: const CircleAvatar(),
              ),
            )),
        body: HomePage(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: "Calls"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger),
              label: "Stories"
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
        ),
      ),
    );
  }
}
