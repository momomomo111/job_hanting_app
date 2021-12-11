import 'package:firebase_core/firebase_core.dart';

googleService() {
  return const FirebaseOptions(
      apiKey: String.fromEnvironment('APIKEY'),
      authDomain: String.fromEnvironment('AUTHDOMAIN'),
      projectId: String.fromEnvironment('PROJECTID'),
      storageBucket: String.fromEnvironment('STORAGEBUCKET'),
      messagingSenderId: String.fromEnvironment('MESSAGINGSENDERID'),
      appId: String.fromEnvironment('APPID'));
}
