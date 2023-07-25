import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/widgets/drawers/drawer_one/drawer_one.dart';
import 'package:flutify/app/pages/widgets/drawers/drawer_two/drawer_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawersPage extends StatelessWidget {
  const DrawersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fluttify"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTileItemWidget(
            title: "Drawer 1",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              DrawerOne(),
            ),
          ),
          ListTileItemWidget(
            title: "Drawer 2",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              DrawerTwo(),
            ),
          ),
        ],
      ),
    );
  }
}
