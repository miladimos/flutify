import 'package:flutify/app/pages/home/ui/widgets/drawer_widget.dart';
import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/ui/login/login_page.dart';
import 'package:flutify/app/utils/helpers.dart';
import 'package:flutify/app/utils/translations/translation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutify/app/pages/home/controller/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Fluttify"),
              centerTitle: true,
              bottom: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    text: "UI",
                  ),
                  Tab(
                    text: "Widgets",
                  ),
                  Tab(
                    text: "Features",
                  ),
                  Tab(
                    text: "Integrations",
                  ),
                  Tab(
                    text: "Full Apps",
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: [
                    ListView(
                      children: [
                        ListTileItemWidget(
                          title: "Login",
                          subtitle: "Collection of Login ui",
                          icon: Icons.login,
                          onTap: () => Get.to(LoginPage()),
                        ),
                        ListTileItemWidget(
                          title: "Register",
                          subtitle: "Collection of Register ui",
                          icon: Icons.email_outlined,
                        ),
                      ],
                    ),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            ),
            drawer: const DrawerWidget(),
          ),
        ),
      ),
    );
  }
}
