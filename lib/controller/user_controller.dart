import 'package:get/get.dart';

class UserController extends GetxController {
  var editable = true.obs;
  var userName = "".obs;
  var userMail = "".obs;
  var authUserName = "".obs;
  var authUserMail = "".obs;

  checkEditable() {
    userName.value == authUserName.value && userMail.value == authUserMail.value
        ? editable(true)
        : editable(false);
  }
}
