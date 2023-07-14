import 'package:flutify/app/pages/home/ui/widgets/drawer_widget.dart';
import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/integrations/integration_page.dart';
import 'package:flutify/app/pages/ui/authentication/authentication_page.dart';
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
          length: 6,
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
                    text: "Animations",
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
              // physics: BouncingScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: [
                    ListView(
                      children: [
                        ListTileItemWidget(
                          title: "Authentication",
                          subtitle: "Collection of Authentication ui",
                          icon: Icons.login,
                          onTap: () => Get.to(const AuthenticationPage()),
                        ),
                        ListTileItemWidget(
                          title: "Profile",
                          subtitle: "Collection of Profile ui",
                          icon: Icons.email_outlined,
                          onTap: () => {},
                        ),
                        ListTileItemWidget(
                          title: "Settings",
                          subtitle: "Collection of Settings ui",
                          icon: Icons.email_outlined,
                          onTap: () => {},
                        ),
                        ListTileItemWidget(
                          title: "Settings",
                          subtitle: "Collection of Settings ui",
                          icon: Icons.email_outlined,
                          onTap: () => {},
                        ),
                        ListTileItemWidget(
                          title: "Dashboard",
                          subtitle: "Collection of Settings ui",
                          icon: Icons.email_outlined,
                          onTap: () => {},
                        ),
                        ListTileItemWidget(
                          title: "Onboarding",
                          subtitle: "Collection of Settings ui",
                          icon: Icons.email_outlined,
                          onTap: () => {},
                        ),
                        ListTileItemWidget(
                          title: "Splash",
                          subtitle: "Collection of Settings ui",
                          icon: Icons.email_outlined,
                          onTap: () => {},
                        ),
                      ],
                    ),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    IntegrationPage().listViewItems,
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
