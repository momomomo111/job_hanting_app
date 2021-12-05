import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_hanting_app/controller/user_controller.dart';

class ProcessListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      ["サイバーエージェント", "未エントリー"],
      ["マネーフォワード", "一次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
      ["グリー", "二次選考通過"],
    ];
    return Scaffold(
      appBar: AppBar(title: const Text("選考企業一覧")),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                child: GetBuilder<UserController>(
                  builder: (_) => InkWell(
                    onTap: () {
                      if (_.userType.value == UserType.student) {
                        Get.toNamed('/process-select');
                      }
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 0.1,
                            blurRadius: 10.0,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      height: 100,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index][0],
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Text(
                                    list[index][1],
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: GetBuilder<UserController>(
        builder: (_) => Visibility(
          visible: _.userType.value == UserType.student,
          child: FloatingActionButton.large(
            onPressed: () {
              Get.toNamed('/company-add');
            },
            child: const Icon(
              Icons.playlist_add_outlined,
            ),
          ),
        ),
      ),
    );
  }
}
