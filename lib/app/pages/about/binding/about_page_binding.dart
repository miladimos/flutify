import 'package:get/get.dart';

import 'package:flutify/app/pages/about/controller/about_page_controller.dart';

class AboutPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AboutPageController());
  }
}
