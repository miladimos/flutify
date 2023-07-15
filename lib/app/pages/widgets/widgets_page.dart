import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/widgets/circular_progressbar.dart';
import 'package:flutify/app/pages/widgets/drawers/drawer_with_animation/drawer_with_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class WidgetsPage extends StatelessWidget {
  WidgetsPage({super.key});

  final ListView listViewItems = ListView(
    children: [
      ListTileItemWidget(
        title: 'Progress Bars',
        subtitle: "I",
        icon: Icons.login,
        onTap: () => Get.to(CircularProgressbar()),
      ),
      ListTileItemWidget(
        title: 'Slide bars',
        subtitle: "I",
        icon: Icons.login,
        onTap: () => Get.to(DrawerWithAnimation()),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
