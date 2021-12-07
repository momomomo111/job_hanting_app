import 'package:get/get.dart';

enum UserType { student, other }

class UserController extends GetxController {
  var userType = UserType.student.obs;

  void setStudent() => userType(UserType.student);

  void setOther() => userType(UserType.other);
}
