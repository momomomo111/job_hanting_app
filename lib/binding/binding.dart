import 'package:get/get.dart';
import 'package:job_hanting_app/controller/my_process_controller.dart';
import 'package:job_hanting_app/controller/process_controller.dart';
import 'package:job_hanting_app/controller/user_controller.dart';

class Bind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
    Get.lazyPut<MyProcessController>(() => MyProcessController());
    Get.lazyPut<ProcessController>(() => ProcessController());
  }
}
