import 'package:flutter/material.dart';

class ListTileItemWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget? trailing;
  final Function()? onTap;

  const ListTileItemWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.onTap,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(icon),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
