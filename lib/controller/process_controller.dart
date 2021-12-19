import 'package:get/get.dart';

class ProcessController extends GetxController {
  final processPattern = [
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
    "四次面接待ち",
    "四次面接結果待ち",
    "四次面接通過",
    "最終面接待ち",
    "最終面接結果待ち",
    "内定/内々定",
    "お見送り"
  ];
  final selectedProcess = '0'.obs;

  void handleRadio(value) => selectedProcess(value);
}
