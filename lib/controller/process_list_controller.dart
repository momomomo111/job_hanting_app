import 'package:get/get.dart';

class ProcessListController extends GetxController {
  var processList = [
    ["サイバーエージェント", "未エントリー"],
    ["マネーフォワード", "一次選考通過"],
    ["グリー", "二次選考通過"],
  ].obs;

  void setProcess(company) => processList.add([company, "未エントリー"]);
}
