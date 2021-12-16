import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_hanting_app/binding/binding.dart';
import 'package:job_hanting_app/key/google_services.dart';
import 'package:job_hanting_app/view/auth_screen.dart';
import 'package:job_hanting_app/view/company_add_screen.dart';
import 'package:job_hanting_app/view/process_list_screen.dart';
import 'package:job_hanting_app/view/process_select_screen.dart';
import 'package:job_hanting_app/view/title_screen.dart';
import 'package:job_hanting_app/view/user_select_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    if (GetPlatform.isWeb) {
      await Firebase.initializeApp(options: googleService());
      print(googleService().toString());
    } else {
      await Firebase.initializeApp();
    }
  } catch (e) {
    rethrow;
  }

  runApp(GetMaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.blueAccent,
      textTheme: GoogleFonts.mPlusRounded1cTextTheme(),
    ),
    initialRoute: '/title',
    getPages: [
      GetPage(name: '/title', page: () => TitleScreen(), binding: Bind()),
      GetPage(
          name: '/user-select',
          page: () => UserSelectScreen(),
          binding: Bind()),
      GetPage(name: '/auth', page: () => AuthScreen(), binding: Bind()),
      GetPage(
          name: '/process-list',
          page: () => ProcessListScreen(),
          binding: Bind()),
      GetPage(
          name: '/process-select',
          page: () => ProcessSelectScreen(),
          binding: Bind()),
      GetPage(
          name: '/company-add',
          page: () => CompanyAddScreen(),
          binding: Bind()),
    ],
  ));
}
