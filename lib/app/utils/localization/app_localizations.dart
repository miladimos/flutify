import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLocalization extends ChangeNotifier {
  // Locale _locale;

  // Locale get locale => _locale ?? Locale('fa');

  String LAGUAGE_CODE = 'languageCode';

  String ENGLISH = 'en';
  String FARSI = 'fa';

  // void changeLocale(Locale newLocale) {
  //   if (newLocale == Locale('es')) {
  //     _locale = Locale('es');
  //   } else {
  //     _locale = Locale('en');
  //   }
  //   notifyListeners();
  // }

  // Locale _locale(String languageCode) {
  //   switch (languageCode) {
  //     case ENGLISH:
  //       return Locale(ENGLISH, 'US');
  //     case FARSI:
  //       return Locale(FARSI, "FR");
  //   }
  //   return Locale(ENGLISH, 'US');
  // }

  // Future<Locale> setLocale(String languageCode) async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   await _prefs.setString(LAGUAGE_CODE, languageCode);
  //   return _locale(languageCode);
  // }

  // Future<Locale> getLocale() async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   String languageCode = _prefs.getString(LAGUAGE_CODE) ?? "en";
  //   return _locale(languageCode);
  // }

  // static void setLocale(BuildContext context, Locale newLocale) async {
  //   State? state = context.findAncestorStateOfType<State>();

  //   var prefs = await SharedPreferences.getInstance();
  //   prefs.setString('languageCode', newLocale.languageCode);
  //   prefs.setString('countryCode', "");

  //   state?.setState(() {
  //     state._locale = newLocale;
  //   });
  // }
}
