import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  late Rx<User?> firebaseUser;

  late Rx<GoogleSignInAccount?> googleSignInAccount;

  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSign = GoogleSignIn();

  _setInitialScreen(User? user) {
    if (user == null || user.displayName == "" || user.email == "") {
      Get.toNamed('/auth');
    } else {
      Get.toNamed("/process-list?name=${user.displayName}&mail=${user.email}",
          arguments: true);
    }
  }

  _setInitialScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
    if (googleSignInAccount == null ||
        googleSignInAccount.displayName == "" ||
        googleSignInAccount.email == "") {
      Get.toNamed('/auth');
    } else {
      Get.toNamed(
          "/process-list?name=${googleSignInAccount.displayName}&mail=${googleSignInAccount.email}",
          arguments: true);
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
        "エラー",
        "認証時にエラーが発生しました。",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void signOut() async {
    await auth.signOut();
    Get.offAllNamed('/title');
  }
}
