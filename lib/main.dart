import 'package:get_storage/get_storage.dart';
import 'package:flutify/app/application.dart';
import 'package:flutify/app/services/service_locator.dart';
import 'package:flutify/app/utils/global_error_handler.dart';

void main() async {
  await setupIoCContainer();

  await GetStorage.init();

  GlobalErrorHandler(child: const Application());
}
