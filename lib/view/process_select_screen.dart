import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_hanting_app/controller/my_process_controller.dart';

class ProcessSelectScreen extends StatelessWidget {
  final MyProcessController _myProcessController = Get.find();

  @override
  Widget build(BuildContext context) {
    final companyIndex = int.parse(Get.arguments);
    final companyName = _myProcessController.myProcess[companyIndex].company;
    return Scaffold(
      appBar: AppBar(title: const Text("選考状況選択")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "企業の選考状況を選択してください",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            companyName,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _myProcessController.processPattern.length,
              itemBuilder: (BuildContext context, int index) {
                return Obx(
                  () => RadioListTile(
                    title: Text(
                      _myProcessController.processPattern[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    value: index.toString(),
                    onChanged: (value) =>
                        _myProcessController.handleRadio(value),
                    groupValue: _myProcessController.selectedProcess.value,
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: 200,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    _myProcessController.setProcess(
                        companyName,
                        _myProcessController.processPattern[int.parse(
                            _myProcessController.selectedProcess.value)]);
                    Get.back();
                  },
                  child: const Text(
                    "決定",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple[800],
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
