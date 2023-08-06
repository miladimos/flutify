import 'package:flutify/app/pages/full_apps/signal/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutify/app/utils/localization/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InternationalizationPage extends StatefulWidget {
  const InternationalizationPage({super.key});

  @override
  State<InternationalizationPage> createState() =>
      _InternationalizationPageState();
}

class _InternationalizationPageState extends State<InternationalizationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('fa'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.title),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButton(
              underline: Container(),
              value: AppLocalizations.of(context)!.localeName.toString(),
              items: [
                DropdownMenuItem(
                  value: "en",
                  child: SvgPicture.asset(
                    "assets/images/us_flag.svg",
                    fit: BoxFit.contain,
                  ),
                ),
                DropdownMenuItem(
                  value: "fa",
                  // enabled: true,
                  child: SvgPicture.asset(
                    "assets/images/ir_flag.svg",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
              onChanged: (value) {
                setState(() {});
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.helloWorld,
        ),
      ),
    );
  }
}
