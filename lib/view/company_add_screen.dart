import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_hanting_app/controller/my_process_controller.dart';

class CompanyAddScreen extends StatelessWidget {
  final MyProcessController _myProcessController = Get.find();
  final _addCompanyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("選考企業追加")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "気になる企業 / 選考している企業\nを選択してください",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _addCompanyController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "企業名",
                labelText: "企業名",
              ),
              autovalidateMode: AutovalidateMode.always,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '企業名が入力されていません';
                }
                return null;
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
                    _myProcessController.setCompany(_addCompanyController.text);
                    if (_addCompanyController.text.isNotEmpty) {
                      Get.toNamed("/process-list");
                    }
                  },
                  child: const Text(
                    "決定",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
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
