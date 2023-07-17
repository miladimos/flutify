import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimationPage extends StatelessWidget {
  AnimationPage({super.key});

  final ListView listViewItems = ListView(
    children: [
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
