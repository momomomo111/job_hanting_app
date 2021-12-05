import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_hanting_app/view/company_add_screen.dart';
import 'package:job_hanting_app/view/process_list_screen.dart';
import 'package:job_hanting_app/view/process_select_screen.dart';
import 'package:job_hanting_app/view/title_screen.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.purple,
      textTheme: GoogleFonts.mPlusRounded1cTextTheme(),
    ),
    initialRoute: '/title',
    getPages: [
      GetPage(name: '/title', page: () => TitleScreen()),
      GetPage(name: '/process-list', page: () => ProcessListScreen()),
      GetPage(name: '/process-select', page: () => ProcessSelectScreen()),
      GetPage(name: '/company-add', page: () => CompanyAddScreen()),
    ],
  ));
}
