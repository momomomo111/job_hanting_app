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
      _userController.setName(user.displayName);
      _userController.setMail(user.email);
      Get.toNamed('/process-list');
    }
  }

  _setInitialScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
    if (googleSignInAccount == null || googleSignInAccount.displayName == "") {
      Get.toNamed('/auth');
    } else {
      _userController.setName(googleSignInAccount.displayName);
      _userController.setMail(googleSignInAccount.email);

      Get.toNamed('/process-list');
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
      GoogleSignInAccount? googleSignInAccount = await googleSign.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await auth
            .signInWithCredential(credential)
            .catchError((onErr) => print(onErr));
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      print(e.toString());
    }
  }

  void signOut() async {
    await auth.signOut();
    Get.offAllNamed('/title');
  }
}
