import 'package:get/get.dart';
import 'package:job_hanting_app/enum/user_type.dart';

class UserController extends GetxController {
  var userType = UserType.student.obs;
  var userName = "".obs;
  var userMail = "".obs;

  void setStudent() => userType(UserType.student);

  void setOther() => userType(UserType.other);

  void setName(name) => userName(name);

  void setMail(mail) => userMail(mail);
}
