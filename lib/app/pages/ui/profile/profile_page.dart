import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/ui/profile/profile_one/profile_one_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
            title: "Profile 1",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              ProfileOnePage(),
            ),
          ),
        ],
      ),
    );
  }
}
