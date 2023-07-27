import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/ui/authentication/login_five/login_five_page.dart';
import 'package:flutify/app/pages/ui/authentication/login_four/login_four_page.dart';
import 'package:flutify/app/pages/ui/authentication/login_one/login_one_page.dart';
import 'package:flutify/app/pages/ui/authentication/login_six/login_six_page.dart';
import 'package:flutify/app/pages/ui/authentication/login_three/login_three_page.dart';
import 'package:flutify/app/pages/ui/authentication/login_two/login_two_page.dart';
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
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              LoginOnePage(),
            ),
          ),
          ListTileItemWidget(
            title: "Login 2",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              LoginTwoPage(),
            ),
          ),
          ListTileItemWidget(
            title: "Login 3",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              LoginThreePage(),
            ),
          ),
          ListTileItemWidget(
            title: "Login 4",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              LoginFourPage(),
            ),
          ),
          ListTileItemWidget(
            title: "Login 5",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              LoginFivePage(),
            ),
          ),
          ListTileItemWidget(
            title: "Login 6",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              LoginSixPage(),
            ),
          ),
        ],
      ),
    );
  }
}
