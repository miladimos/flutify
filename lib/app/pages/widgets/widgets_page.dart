import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/widgets/circular_progressbar.dart';
import 'package:flutify/app/pages/widgets/clock_page.dart';
import 'package:flutify/app/pages/widgets/drawers/drawers_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetsPage extends StatelessWidget {
  WidgetsPage({super.key});

  final ListView listViewItems = ListView(
    children: [
      ListTileItemWidget(
        title: 'Drawers',
        icon: Icons.login,
        onTap: () => Get.to(DrawersPage()),
      ),
      ListTileItemWidget(
        title: 'Progress Bars',
        icon: Icons.login,
        onTap: () => Get.to(CircularProgressbar()),
      ),
      ListTileItemWidget(
        title: 'Clock',
        icon: Icons.login,
        onTap: () => Get.to(ClockPage()),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
