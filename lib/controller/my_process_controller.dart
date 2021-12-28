import 'package:get/get.dart';
import 'package:job_hanting_app/api/firebase_db.dart';
import 'package:job_hanting_app/controller/user_controller.dart';

class MyProcessController extends GetxController {
  final UserController _userController = Get.find();
  Rx<List<MyProcessModel>> myProcessList = Rx<List<MyProcessModel>>([]);

  List<MyProcessModel> get myProcess => myProcessList.value;

  final deleteMode = false.obs;
  final loadingList = true.obs;

  @override
  void onReady() {
    super.onReady();
    loadingWait();
  }

  Future<void> loadingWait() async {
    await Future.delayed(const Duration(seconds: 10));
    loadingList(false);
  }

  void readMyProcess() {
    if (_userController.userMail.value != "" &&
        _userController.userName.value != "") {
      myProcessList.bindStream(FirestoreDb.myProcessStream(
          _userController.userMail.value, _userController.userName.value));
    }
  }

  void setCompany(company) => FirestoreDb.addCompany(
      MyProcessModel(company: company, process: "未エントリー"),
      _userController.userMail.value,
      _userController.userName.value);

  void setProcess(company, process) => FirestoreDb.updateProcess(
      MyProcessModel(company: company, process: process),
      _userController.userMail.value,
      _userController.userName.value);

  void deleteMyProcess(company) => FirestoreDb.deleteProcess(
      company, _userController.userMail.value, _userController.userName.value);

  void deleteAccount() {
    FirestoreDb.deleteAccount(
        _userController.userMail.value, _userController.userName.value);
    Get.offAllNamed('/title');
  }
}
