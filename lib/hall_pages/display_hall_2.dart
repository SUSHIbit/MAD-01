// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hall2 extends StatelessWidget {
  const Hall2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F2DA),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),

          // Hall 1
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Center(
                    child: Text(
                      "Hall Package 2",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF045762),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 200,
                      width: 400,
                      color: Colors.blue,
                      child: Image.asset(
                        'lib/images/hall-package-2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Title
                Text(
                  "ASTANA ROYAL HALL",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF045762),
                  ),
                ),

                // Subtitle
                Text(
                  "Pahang",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF045762),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // Container
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                    bottom: Radius.circular(0),
                  ),
                  color: Color(0xffEA97AD),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        // Title
                        Center(
                          child: Text(
                            "Hall Details",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF045762),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // Title
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Type of hall:",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF045762),
                              ),
                            ),

                            const SizedBox(width: 50),

                            // Title
                            Text(
                              "Ballroom",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF045762),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        // Title
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "No Of People:",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF045762),
                              ),
                            ),

                            const SizedBox(width: 50),

                            // Title
                            Text(
                              "500",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF045762),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        // Title
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Type of event:",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF045762),
                              ),
                            ),

                            const SizedBox(width: 50),

                            // Title
                            Text(
                              "Conference Meeting & Wedding",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF045762),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        // Title
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Additional Request:",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF045762),
                              ),
                            ),

                            const SizedBox(width: 50),

                            // Title
                            Text(
                              "Food, Drink, Table, Emcee & Catering Service",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF045762),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        // Title
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description:",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF045762),
                              ),
                            ),

                            const SizedBox(width: 50),

                            // Title
                            Text(
                              "Morbi maximus rutrum feugiat. Maecenas id bibendum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus ac massa arcu. Vivamus eu mauris et massa blandit cursus eu ac metus. Aliquam augue libero, sagittis non velit nec, varius ornare metus. Aliquam in nunc arcu. Cras ornare, odio eu vehicula tempus, nisl tellus lacinia tellus, vitae finibus orci diam laoreet sem.",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF045762),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        // Button
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Choose"),
                        ),

                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
