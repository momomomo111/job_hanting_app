import 'package:get/get.dart';

class ProcessPair {
  String company, process;

  ProcessPair({this.company = '', this.process = '未エントリー'});
}

class ProcessController extends GetxController {
  var myProcessList = [
    ProcessPair(company: "サイバーエージェント", process: "未エントリー"),
    ProcessPair(company: "マネーフォワード", process: "一次選考通過"),
    ProcessPair(company: "グリー", process: "二次選考通過"),
  ].obs;

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

  void setCompany(company) =>
      myProcessList.add(ProcessPair(company: company, process: "未エントリー"));

  void setProcess(index, process) {
    myProcessList.insert(
        index,
        ProcessPair(
            company: myProcessList[index].company,
            process: processPattern[process]));
    myProcessList.removeAt(index + 1);
  }

  void handleRadio(value) => selectedProcess(value);
}
