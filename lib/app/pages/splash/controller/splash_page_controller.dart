import 'package:get/get.dart';

class SplashPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Future.delayed(Duration(seconds: 3), () => {Get.toNamed('/home')});
  }
}
