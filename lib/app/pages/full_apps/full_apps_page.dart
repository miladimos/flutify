import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FullAppsPage extends StatelessWidget {
  FullAppsPage({super.key});

  final ListView listViewItems = ListView(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Text(
          "Full Apps UI",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      ListTileItemWidget(
        title: 'Dating',
        subtitle: "Dating app ui",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'notes',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Shopping',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'instagram',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'signal',
        subtitle: "Signal Chat ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'threads',
        subtitle: "Threads ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Telegram X',
        subtitle: "Telegram X ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Painter',
        subtitle: "Paint app",
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
