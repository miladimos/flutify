import 'package:flutify/app/pages/animations/basic/basic_animations_page.dart';
import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationPage extends StatelessWidget {
  AnimationPage({super.key});

  final ListView listViewItems = ListView(
    children: [
      ListTileItemWidget(
        title: 'Basics',
        subtitle: "basic flutter animations",
        icon: Icons.login,
        onTap: () => Get.to(BasicAnimationsPage()),
      ),
      ListTileItemWidget(
        title: 'River',
        subtitle: "Use river animations in flutter",
        icon: Icons.login,
        onTap: () => {},
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
