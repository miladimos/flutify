import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class UrlLauncherService {
  static Future openWebUrl(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }

  dynamic launchBrowser() async {
    try {
      Uri email =
          Uri(scheme: 'https', path: "www.github.com/mustafatahirhussein");

      await launchUrl(email);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  dynamic launchSms() async {
    try {
      Uri email = Uri(
        scheme: 'sms',
        path: "+1234567890",
      );

      await launchUrl(email);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future launchEmail() async {
    try {
      Uri email = Uri(
        scheme: 'mailto',
        path: "abcd@gmail.com",
        queryParameters: {
          'subject': "Testing subject",
          'body': "",
        },
      );

      await launchUrl(email);
    } catch (e) {
      print(e.toString());
    }
  }

  openMap() async {
    const String lat = "42.3540";
    const String lng = "71.0586";
    const String mapUrl = "geo:$lat,$lng";
    if (await canLaunch(mapUrl)) {
      await launch(mapUrl);
    } else {
      throw "Couldn't launch Map";
    }
  }

  // for desktops
  dynamic openDirectory() async {
    try {
      const String directory = "D:\Python310\libs";
      final Uri uri = Uri.file(directory);

      if (!File(uri.toFilePath()).existsSync()) {
        throw '$uri does not exist!';
      }
      if (!await launchUrl(uri)) {
        throw 'Could not launch $uri';
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
