// ignore_for_file: prefer_const_constructors

import 'package:assignment_master_sushi/pages/display_page.dart';
import 'package:assignment_master_sushi/pages/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/displaypage': (context) => const DisplayPage(),
      },
    );
  }
}
