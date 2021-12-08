import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_hanting_app/binding/binding.dart';
import 'package:job_hanting_app/google_services.dart';
import 'package:job_hanting_app/view/company_add_screen.dart';
import 'package:job_hanting_app/view/process_list_screen.dart';
import 'package:job_hanting_app/view/process_select_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var firebase = await Firebase.initializeApp(
    options: googleService()
  );
  runApp(GetMaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.purple,
      textTheme: GoogleFonts.mPlusRounded1cTextTheme(),
    ),
    initialRoute: '/title',
    getPages: [
      GetPage(
          name: '/title',
          page: () => Center(child: Text(firebase.name)),
          binding: Bind()),
      // GetPage(name: '/title', page: () => TitleScreen(), binding: Bind()),
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
