import 'package:flutify/app/pages/animations/animation_page.dart';
import 'package:flutify/app/pages/full_apps/full_apps_page.dart';
import 'package:flutify/app/pages/home/ui/widgets/drawer_widget.dart';
import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/integrations/integration_page.dart';
import 'package:flutify/app/pages/ui/authentication/authentication_page.dart';
import 'package:flutify/app/pages/widgets/widgets_page.dart';
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
              // physics: ClampingScrollPhysics(),
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
                        ListTileItemWidget(
                          title: "Error",
                          subtitle: "Collection of Settings ui",
                          icon: Icons.email_outlined,
                          onTap: () => {},
                        ),
                      ],
                    ),
                    WidgetsPage().listViewItems,
                    AnimationPage().listViewItems,
                    IntegrationPage().listViewItems,
                    FullAppsPage().listViewItems,
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
