import 'package:flutify/app/pages/about/ui/widgets/about_us_widget.dart';
import 'package:flutify/app/pages/about/ui/widgets/change_log_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutify/app/pages/about/controller/about_page_controller.dart';

class AboutPage extends GetView<AboutPageController> {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("About"),
          bottom: TabBar(
            tabs: [
              Tab(text: "About us"),
              Tab(text: "Changelog"),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            child: TabBarView(
              children: [
                AboutUsWidget(),
                ChangeLogWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
