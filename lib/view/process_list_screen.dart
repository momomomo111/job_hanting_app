import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_hanting_app/controller/auth_controller.dart';
import 'package:job_hanting_app/controller/my_process_controller.dart';
import 'package:job_hanting_app/controller/user_controller.dart';
import 'package:share_plus/share_plus.dart';

class ProcessListScreen extends StatelessWidget {
  final MyProcessController _myProcessController = Get.find();
  final UserController _userController = Get.find();
  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    var name = Get.parameters['name'];
    var mail = Get.parameters['mail'];
    var editable = Get.arguments == null ? false : true;
    _userController.userName(name);
    _userController.userMail(mail);

    _myProcessController.readMyProcess();

    return Scaffold(
      appBar: AppBar(
        title: Text(GetPlatform.isWeb
            ? "${_userController.userName.value}さんの選考状況"
            : "${_userController.userName.value}さん"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () => Share.share(
                "https://job-hunting-flutter.web.app/#/process-list?name=${_userController.userName.value}&mail=${_userController.userMail.value}",
                subject: "${_userController.userName.value}さんの企業選考状況です。"),
          ),
          Visibility(
            visible: editable,
            child: IconButton(
              onPressed: () {
                _myProcessController.deleteMode.value =
                    !_myProcessController.deleteMode.value;
              },
              icon: Obx(
                () => Icon(
                  _myProcessController.deleteMode.value
                      ? Icons.clear
                      : Icons.delete,
                ),
              ),
            ),
          ),
          Visibility(
            visible: editable,
            child: IconButton(
              onPressed: _authController.signOut,
              icon: const Icon(
                Icons.logout_outlined,
              ),
            ),
          ),
        ],
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: _myProcessController.myProcess.isEmpty
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          children: [
            Visibility(
              visible: _myProcessController.myProcess.isNotEmpty,
              child: Flexible(
                child: ListView.builder(
                  itemCount: _myProcessController.myProcess.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 16.0),
                      child: InkWell(
                        onTap: () {
                          if (editable) {
                            Get.toNamed('/process-select',
                                arguments: index.toString());
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _myProcessController
                                            .myProcess[index].company,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: SizedBox(
                                          // width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 16),
                                            child: Text(
                                              _myProcessController
                                                  .myProcess[index].process,
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
                                      visible:
                                          _myProcessController.deleteMode.value,
                                      child: IconButton(
                                        onPressed: () {
                                          _myProcessController.deleteMyProcess(
                                              _myProcessController
                                                  .myProcess[index].company);
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
            ),
            Visibility(
              visible: _myProcessController.myProcess.isEmpty &&
                  !_myProcessController.loadingList.value,
              child: Center(
                child: Text(
                  editable ? "選考状況を登録しましょう" : "この方の選考状況は\n登録されていません",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Visibility(
                visible: _myProcessController.myProcess.isEmpty &&
                    _myProcessController.loadingList.value,
                child: const Center(child: CircularProgressIndicator())),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: editable,
        child: FloatingActionButton.large(
          backgroundColor: Theme.of(context).primaryColor,
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
