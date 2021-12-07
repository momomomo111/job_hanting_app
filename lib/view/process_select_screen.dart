import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_hanting_app/controller/process_list_controller.dart';

class ProcessSelectScreen extends StatelessWidget {
  final ProcessListController _processListController = Get.find();

  @override
  Widget build(BuildContext context) {
    final companyName = Get.arguments;
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
          Obx(
            () => Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _processListController.process.length,
                itemBuilder: (BuildContext context, int index) {
                  return RadioListTile(
                    title: Text(
                      _processListController.process[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    value: null,
                    onChanged: (void value) {},
                    groupValue: null,
                  );
                },
              ),
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
