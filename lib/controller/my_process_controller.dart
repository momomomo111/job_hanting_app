import 'package:get/get.dart';
import 'package:job_hanting_app/api/firebase_db.dart';

class MyProcessController extends GetxController {
  Rx<List<MyProcessModel>> myProcessList = Rx<List<MyProcessModel>>([]);

  List<MyProcessModel> get myProcess => myProcessList.value;

  final deleteMode = false.obs;

  @override
  void onReady() {
    myProcessList.bindStream(FirestoreDb.myProcessStream());
  }

  void setCompany(company) => FirestoreDb.addCompany(
      MyProcessModel(company: company, process: "未エントリー"));

  void setProcess(company, process) => FirestoreDb.updateProcess(
      MyProcessModel(company: company, process: process));

  void deleteMyProcess(company) => FirestoreDb.deleteProcess(company);
}
