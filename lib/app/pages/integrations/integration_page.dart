import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/integrations/check_internet_connectivity/check_internet_connectivity.dart';
import 'package:flutify/app/pages/integrations/url_luncher/url_luncher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

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
        onTap: () => Get.to(CheckInternetConnectivity()),
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
      ListTileItemWidget(
        title: 'Internationalization',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'URL Luncher',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => Get.to(UrlLuncher()),
      ),
      ListTileItemWidget(
        title: 'Signature Pad',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'PDF',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'RESTfull API',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Soap API',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Sqflite',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'Hive',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'lisar',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => {},
      ),
      ListTileItemWidget(
        title: 'State Managements',
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
