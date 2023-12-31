import 'package:get/get.dart';
import 'package:flutify/app/pages/home/ui/home_page.dart';
import 'package:flutify/app/pages/home/binding/home_page_binding.dart';
import 'package:flutify/app/pages/splash/ui/splash_page.dart';
import 'package:flutify/app/pages/splash/binding/splash_page_binding.dart';

abstract class _Paths {
  _Paths._();

  static const String HOME = '/home';
  static const String SPLASH = '/splash';
}

class AppRoutes {
  AppRoutes._();

  static const String initialRoute = _Paths.SPLASH;

  static var routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomePage(),
      binding: HomePageBinding(),
    ),
    GetPage(
        name: _Paths.SPLASH,
        page: () => SplashPage(),
        binding: SplashPageBinding()),
  ];
}
