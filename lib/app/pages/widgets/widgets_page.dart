import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/widgets/circular_progressbar.dart';
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
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
