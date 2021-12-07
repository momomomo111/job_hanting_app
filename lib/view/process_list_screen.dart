import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_hanting_app/controller/process_list_controller.dart';
import 'package:job_hanting_app/controller/user_controller.dart';

class ProcessListScreen extends StatelessWidget {
  final ProcessListController _processListController = Get.find();
  final UserController _userListController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("選考企業一覧")),
      body: Obx(
        () => ListView.builder(
          shrinkWrap: true,
          itemCount: _processListController.myProcessList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 16.0),
                  child: InkWell(
                    onTap: () {
                      if (_userListController.userType.value ==
                          UserType.student) {
                        Get.toNamed('/process-select',
                            arguments:
                                _processListController.myProcessList[index][0]);
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
                                _processListController.myProcessList[index][0],
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Text(
                                    _processListController.myProcessList[index]
                                        [1],
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
              ],
            );
          },
        ),
      ),
      floatingActionButton: Visibility(
        visible: _userListController.userType.value == UserType.student,
        child: FloatingActionButton.large(
          onPressed: () {
            Get.toNamed('/company-add');
          },
          child: const Icon(
            Icons.playlist_add_outlined,
          ),
        ),
      ),
    );
  }
}
