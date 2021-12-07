import 'package:get/get.dart';

class ProcessListController extends GetxController {
  var myProcessList = [
    ["サイバーエージェント", "未エントリー"],
    ["マネーフォワード", "一次選考通過"],
    ["グリー", "二次選考通過"],
  ].obs;

  var process = [
    "未エントリー",
    "書類選考結果待ち",
    "書類選考通過",
    "一次面接結果待ち",
    "一次面接通過",
    "二次面接結果待ち",
    "二次面接通過",
    "最終面接結果待ち",
    "内定/内々定",
    "お見送り"
  ].obs;

  void setCompany(company) => myProcessList.add([company, "未エントリー"]);

  // (index: int, companyName: string)
  void setProcess(processPair) =>
      myProcessList[processPair[0]][1] = processPair[1];
}
