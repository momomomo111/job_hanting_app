import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_hanting_app/controller/process_controller.dart';
import 'package:job_hanting_app/controller/user_controller.dart';

class ProcessListScreen extends StatelessWidget {
  final ProcessController _processController = Get.find();
  final UserController _userListController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("選考企業一覧"),
        actions: <Widget>[
          Obx(
            () => Visibility(
              visible: !_processController.deleteMode.value &&
                  _userListController.userType.value == UserType.student,
              child: IconButton(
                onPressed: () {
                  _processController.deleteMode.value = true;
                },
                icon: const Icon(
                  Icons.delete,
                ),
              ),
            ),
          ),
          Obx(
            () => Visibility(
              visible: _processController.deleteMode.value &&
                  _userListController.userType.value == UserType.student,
              child: IconButton(
                onPressed: () {
                  _processController.deleteMode.value = false;
                },
                icon: const Icon(
                  Icons.clear,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Obx(
        () => ListView.builder(
          shrinkWrap: true,
          itemCount: _processController.myProcessList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: InkWell(
                onTap: () {
                  if (_userListController.userType.value == UserType.student) {
                    Get.toNamed('/process-select', arguments: index.toString());
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
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _processController.myProcessList[index].company,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  // width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 16),
                                    child: Text(
                                      _processController
                                          .myProcessList[index].process,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Obx(
                            () => Visibility(
                              visible: _processController.deleteMode.value,
                              child: IconButton(
                                onPressed: () {
                                  _processController.deleteMyProcess(index);
                                },
                                icon: const Icon(
                                  Icons.remove_circle,
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
