import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserSelectScreen extends StatelessWidget {
  UserSelectScreen({Key? key}) : super(key: key);
  final _userSelectController = TextEditingController();
  final _mailSelectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ユーザー検索")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "選考状況を知りたい方の名前\nとメールアドレスを入力してください",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _userSelectController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "名前",
                    labelText: "名前",
                  ),
                  autovalidateMode: AutovalidateMode.always,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '名前が入力されていません';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _mailSelectController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "メールアドレス",
                    labelText: "メールアドレス",
                  ),
                  autovalidateMode: AutovalidateMode.always,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'メールアドレスが入力されていません';
                    }
                    return null;
                  },
                ),
              ),
            ],
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
                    if (_userSelectController.text.isNotEmpty &&
                        _mailSelectController.text.isNotEmpty) {
                      Get.toNamed(
                          "/process-list?name=${_userSelectController.text}&mail=${_mailSelectController.text}");
                    }
                  },
                  child: const Text(
                    "見に行く",
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
