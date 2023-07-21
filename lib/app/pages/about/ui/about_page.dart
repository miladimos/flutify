import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutify/app/pages/about/controller/about_page_controller.dart';

class AboutPage extends GetView<AboutPageController> {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Fluttify",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
