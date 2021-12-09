import 'package:get/get.dart';
import 'package:job_hanting_app/api/firebase_db.dart';

class MyProcessController extends GetxController {
  Rx<List<MyProcessModel>> myProcessList = Rx<List<MyProcessModel>>([]);

  List<MyProcessModel> get myProcess => myProcessList.value;

  @override
  void onReady() {
    myProcessList.bindStream(FirestoreDb.myProcessStream());
  }

  var processPattern = [
    "未エントリー",
    "面談待ち",
    "書類選考中",
    "書類選考結果待ち",
    "書類選考通過",
    "一次面接待ち",
    "一次面接結果待ち",
    "一次面接通過",
    "二次面接待ち",
    "二次面接結果待ち",
    "二次面接通過",
    "三次面接待ち",
    "三次面接結果待ち",
    "三次面接通過",
    "最終面接待ち",
    "最終面接結果待ち",
    "内定/内々定",
    "お見送り"
  ];

  final selectedProcess = '0'.obs;

  final deleteMode = false.obs;

  void setCompany(company) => FirestoreDb.addCompany(
      MyProcessModel(company: company, process: "未エントリー"));

  void setProcess(company, process) => FirestoreDb.updateProcess(
      MyProcessModel(company: company, process: process));

  void deleteMyProcess(company) => FirestoreDb.deleteProcess(company);

  void handleRadio(value) => selectedProcess(value);
}
