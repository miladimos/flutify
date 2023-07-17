import 'package:flutify/app/pages/full_apps/signal/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class TelegramXPage extends StatefulWidget {
  const TelegramXPage({super.key});

  @override
  State<TelegramXPage> createState() => _TelegramXPageState();
}

class _TelegramXPageState extends State<TelegramXPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
