import 'package:get/get.dart';

class AboutPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Future.delayed(Duration(seconds: 3), () => {Get.toNamed('/home')});
  }
}
