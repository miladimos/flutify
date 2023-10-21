import 'package:flutify/app/pages/home/ui/widgets/list_tile_item_widget.dart';
import 'package:flutify/app/pages/integrations/barcode/barcode_page.dart';
import 'package:flutify/app/pages/integrations/check_internet_connectivity/check_internet_connectivity.dart';
import 'package:flutify/app/pages/integrations/clipboard/clipboard_page.dart';
import 'package:flutify/app/pages/integrations/databases/databases_page.dart';
import 'package:flutify/app/pages/integrations/face_id/face_id_page.dart';
import 'package:flutify/app/pages/integrations/file_picker/file_picker_page.dart';
import 'package:flutify/app/pages/integrations/fingerprint/fingerprint_page.dart';
import 'package:flutify/app/pages/integrations/firebase/firebase_page.dart';
import 'package:flutify/app/pages/integrations/internationalization/internationalization_page.dart';
import 'package:flutify/app/pages/integrations/local_notifications/local_notification_page.dart';
import 'package:flutify/app/pages/integrations/multiple_theme/multiple_theme_page.dart';
import 'package:flutify/app/pages/integrations/oauth/oauth_page.dart';
import 'package:flutify/app/pages/integrations/pdf/pdf_page.dart';
import 'package:flutify/app/pages/integrations/qrcode/qrcode_page.dart';
import 'package:flutify/app/pages/integrations/signature_pad/signature_pad_page.dart';
import 'package:flutify/app/pages/integrations/supabase/supabase_page.dart';
import 'package:flutify/app/pages/integrations/url_luncher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class IntegrationPage extends StatelessWidget {
  IntegrationPage({super.key});

  final ListView listViewItems = ListView(
    children: [
      ListTileItemWidget(
        title: 'Check Internet Connectivity',
        subtitle: "Connection Statuses",
        icon: Icons.network_check,
        onTap: () => Get.to(CheckInternetConnectivity()),
      ),
      ListTileItemWidget(
        title: 'URL Luncher',
        subtitle: "Lunch external links",
        icon: Icons.link,
        onTap: () => Get.to(UrlLauncher()),
      ),
      // ListTileItemWidget(
      //   title: 'Databases',
      //   subtitle: "Sqflite, Hive, Lisar, ...",
      //   icon: Icons.login,
      //   onTap: () => Get.to(DatabasesPage()),
      // ),
      // ListTileItemWidget(
      //   title: "Firebase",
      //   subtitle: "Notes app",
      //   icon: Icons.login,
      //   onTap: () => Get.to(FirebasePage()),
      // ),
      // ListTileItemWidget(
      //   title: 'Supabase',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => Get.to(SupabasePage()),
      // ),
      // ListTileItemWidget(
      //   title: 'File picker',
      //   subtitle: "File picker",
      //   icon: Icons.login,
      //   onTap: () => Get.to(FilePickerPage()),
      // ),
      ListTileItemWidget(
        title: 'Clipboard',
        subtitle: "Clipboard functionality",
        icon: Icons.copy,
        onTap: () => Get.to(ClipboardPage()),
      ),
      // ListTileItemWidget(
      //   title: 'Local Notifications',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => Get.to(LocalNotificationPage()),
      // ),
      // ListTileItemWidget(
      //   title: 'Push Notifications',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => {},
      // ),
      // ListTileItemWidget(
      //   title: 'Face ID',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => Get.to(FaceIdPage()),
      // ),
      // ListTileItemWidget(
      //   title: 'Fingerprint',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => Get.to(FingerprintPage()),
      // ),
      // ListTileItemWidget(
      //   title: 'Barcode',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => BarcodePage(),
      // ),
      ListTileItemWidget(
        title: 'QRCode',
        subtitle: "qrcode generator and scanner",
        icon: Icons.qr_code,
        onTap: () => Get.to(QrCodePage()),
      ),
      // ListTileItemWidget(
      //   title: 'OAuth Authentication',
      //   subtitle: "with Google, Github, Gitlab",
      //   icon: Icons.login,
      //   onTap: () => Get.to(OauthPage()),
      // ),
      // ListTileItemWidget(
      //   title: 'Multiple Theme',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => Get.to(MultipleThemePage()),
      // ),
      // ListTileItemWidget(
      //   title: 'Internationalization',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.language,
      //   onTap: () => Get.to(InternationalizationPage()),
      // ),
      // ListTileItemWidget(
      //   title: 'Signature Pad',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => Get.to(SignaturePadPage()),
      // ),
      // ListTileItemWidget(
      //   title: 'PDF',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => Get.to(PDFPage()),
      // ),
      // ListTileItemWidget(
      //   title: 'RESTfull API',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => {},
      // ),
      // ListTileItemWidget(
      //   title: 'Soap API',
      //   subtitle: "Instagram ui clone",
      //   icon: Icons.login,
      //   onTap: () => {},
      // ),
      // ListTileItemWidget(
      //   title: 'State Managements',
      //   subtitle: "Provider, Reverpod, bloC, ",
      //   icon: Icons.login,
      //   onTap: () => {},
      // ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
