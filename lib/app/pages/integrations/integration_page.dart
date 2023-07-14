import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntegrationPage extends StatelessWidget {
  IntegrationPage({super.key});

  final ListView listViewItems = ListView(
    children: [
      ListTileItemWidget(
        title: "Firebase",
        subtitle: "Notes app",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Supabase',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Local Notifications',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Push Notifications',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Check Internet Connectivity',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Face ID',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Fingerprint',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Barcode',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'QRCode',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Github OAuth',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Gitlab OAuth',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Google OAuth',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Multiple Theme',
        subtitle: "Instagram ui clone",
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
