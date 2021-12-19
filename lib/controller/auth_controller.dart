import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:job_hanting_app/controller/user_controller.dart';

class AuthController extends GetxController {
  final UserController _userController = Get.find();
  late Rx<User?> firebaseUser;

  late Rx<GoogleSignInAccount?> googleSignInAccount;

  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSign = GoogleSignIn();

  _setInitialScreen(User? user) {
    if (user == null || user.displayName == "") {
      Get.toNamed('/auth');
    } else {
      _userController.authUserName(user.displayName);
      _userController.authUserMail(user.email);
      Get.toNamed("/process-list?name=${user.displayName}&mail=${user.email}");
    }
  }

  _setInitialScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
    if (googleSignInAccount == null || googleSignInAccount.displayName == "") {
      Get.toNamed('/auth');
    } else {
      _userController.authUserName(googleSignInAccount.displayName);
      _userController.authUserMail(googleSignInAccount.email);
      Get.toNamed(
          "/process-list?name=${googleSignInAccount.displayName}&mail=${googleSignInAccount.email}");
    }
  }

  void signInWithGoogle() async {
    firebaseUser = Rx<User?>(auth.currentUser);
    googleSignInAccount = Rx<GoogleSignInAccount?>(googleSign.currentUser);

    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);

    googleSignInAccount.bindStream(googleSign.onCurrentUserChanged);
    ever(googleSignInAccount, _setInitialScreenGoogle);

    try {
      await googleSign.signIn();
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void signOut() async {
    await auth.signOut();
    Get.offAllNamed('/title');
  }
}
