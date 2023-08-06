import 'package:flutify/app/pages/full_apps/bmi_calculator/bmi_calculator.dart';
import 'package:flutify/app/pages/full_apps/dating/dating_page.dart';
import 'package:flutify/app/pages/full_apps/gallery/gallery_page.dart';
import 'package:flutify/app/pages/full_apps/instagram/instagram_page.dart';
import 'package:flutify/app/pages/full_apps/notes/notes_page.dart';
import 'package:flutify/app/pages/full_apps/painter/painter_page.dart';
import 'package:flutify/app/pages/full_apps/shop_bag/shop_bag_page.dart';
import 'package:flutify/app/pages/full_apps/signal/signal_page.dart';
import 'package:flutify/app/pages/full_apps/telegramx/telegramx_page.dart';
import 'package:flutify/app/pages/full_apps/threads/threads_page.dart';
import 'package:flutify/app/pages/full_apps/timer/timer_page.dart';
import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

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
        title: 'Shopping Bag',
        subtitle: "A Shop app for woman bags",
        icon: Icons.login,
        onTap: () => Get.to(ShopBagPage()),
      ),
      ListTileItemWidget(
        title: 'BMI Calculator',
        subtitle: "BMI Calculator app",
        icon: Icons.calculate_outlined,
        onTap: () => Get.to(BMICalculator()),
      ),
      ListTileItemWidget(
        title: 'signal',
        subtitle: "Signal Chat ui clone",
        icon: Icons.login,
        onTap: () => Get.to(SignalPage()),
      ),
      ListTileItemWidget(
        title: 'Gallery',
        subtitle: "photo gallery app",
        icon: Icons.login,
        onTap: () => Get.to(GalleryPage()),
      ),
      ListTileItemWidget(
        title: 'Covid',
        subtitle: "Statistics of covid 19",
        icon: Icons.login,
        onTap: () => Get.to(SignalPage()),
      ),
      ListTileItemWidget(
        title: 'Dating',
        subtitle: "Dating app ui",
        icon: Icons.login,
        onTap: () => Get.to(DatingPage()),
      ),
      ListTileItemWidget(
        title: 'notes',
        subtitle: "Instagram ui clone",
        icon: Icons.login,
        onTap: () => Get.to(NotesPage()),
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
        onTap: () => Get.to(InstagramPage()),
      ),
      ListTileItemWidget(
        title: 'threads',
        subtitle: "Threads ui clone",
        icon: Icons.login,
        onTap: () => Get.to(ThreadsPage()),
      ),
      ListTileItemWidget(
        title: 'Telegram X',
        subtitle: "Telegram X ui clone",
        icon: Icons.login,
        onTap: () => Get.to(TelegramXPage()),
      ),
      ListTileItemWidget(
        title: 'Painter',
        subtitle: "Paint app",
        icon: Icons.login,
        onTap: () => Get.to(PainterPage()),
      ),
      // ListTileItemWidget(
      //   title: 'Timer',
      //   subtitle: "timer app",
      //   icon: Icons.login,
      //   onTap: () => Get.to(TimerPage()),
      // ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
