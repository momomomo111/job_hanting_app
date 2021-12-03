import 'package:flutter/material.dart';
import 'package:job_hanting_app/view/process_list_screen.dart';
import 'package:job_hanting_app/view/title_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Title Screen',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SafeArea(
        child: ProcessListScreen(),
      ),
    ),
  );
}
