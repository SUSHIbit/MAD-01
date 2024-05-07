// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF045762),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image
          Center(
            child: Image.asset(
              'lib/images/school.png',
              height: 150,
              color: Color(0xFFF3F2DA),
            ),
          ),

          const SizedBox(height: 50),

          // Text
          Text(
            "SCHOOL EVENTS",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF3F2DA),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            "Our Hall is perfect for school events!",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFFF3F2DA),
            ),
          )
        ],
      ),
    );
  }
}
