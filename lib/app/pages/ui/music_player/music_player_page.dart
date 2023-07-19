import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/ui/music_player/music_player_one/music_player_one_page.dart';
import 'package:flutify/app/pages/ui/music_player/music_player_two/music_player_two_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

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
            title: "MusicPlayer 1",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              MusicPlayerOnePage(),
            ),
          ),
          ListTileItemWidget(
            title: "MusicPlayer 2",
            icon: Icons.email_outlined,
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(
              MusicPlayerTwoPage(),
            ),
          ),
        ],
      ),
    );
  }
}
