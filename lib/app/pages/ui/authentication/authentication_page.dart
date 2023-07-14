import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/ui/authentication/login_one/login_one_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

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
            title: "Login 1",
            subtitle: "g",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              LoginOnePage(),
            ),
          ),
        ],
      ),
    );
  }
}
