import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_hanting_app/controller/auth_controller.dart';

class AuthScreen extends StatelessWidget {
  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
        ),
        onPressed: () {
          _authController.signInWithGoogle();
        },
        child: const Text("Sign In with Google"),
      ),
    );
  }
}
