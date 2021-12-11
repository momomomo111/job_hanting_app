import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_hanting_app/controller/auth_controller.dart';

class AuthScreen extends StatelessWidget {
  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("認証画面")),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 80,
          child: ElevatedButton(
            onPressed: () {
              _authController.signInWithGoogle();
              Get.back();
            },
            child: const Text(
              "Googleアカウントで\nサインイン / ログイン",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              shape: const StadiumBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
