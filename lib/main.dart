import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_hanting_app/view/process_select_screen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title Screen',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: GoogleFonts.mPlusRounded1cTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: SafeArea(
        child: ProcessSelectScreen(),
      ),
    );
  }
}
