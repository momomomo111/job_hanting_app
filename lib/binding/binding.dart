import 'package:get/get.dart';
import 'package:job_hanting_app/controller/process_list_controller.dart';
import 'package:job_hanting_app/controller/user_controller.dart';

class Bind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
    Get.lazyPut<ProcessListController>(() => ProcessListController());
  }
}