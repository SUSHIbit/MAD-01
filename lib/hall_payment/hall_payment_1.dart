import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HallPayment1 extends StatefulWidget {
  const HallPayment1({Key? key}) : super(key: key);

  @override
  _HallPayment1State createState() => _HallPayment1State();
}

class _HallPayment1State extends State<HallPayment1> {
  TextEditingController discountController = TextEditingController();
  double totalPayment = 100.0;
  double discount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F2DA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SafeArea(
                  child: Text(
                    "Payment",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF045762),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hall Package:",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF045762),
                    ),
                  ),
                  Text(
                    "Hall Package 1",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF045762),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Number of People:",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF045762),
                    ),
                  ),
                  Text(
                    '100',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF045762),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Payment:",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF045762),
                    ),
                  ),
                  Text(
                    'RM ${totalPayment.toStringAsFixed(2)}',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF045762),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              TextField(
                controller: discountController,
                decoration: InputDecoration(
                  labelText: 'Enter Discount Code (if any)',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (discountController.text == 'AVRG03') {
                      // Apply 10% discount
                      discount = totalPayment * 0.10;
                      totalPayment -= discount;
                    } else {
                      // No discount applied
                      discount = 0.0;
                    }
                  });
                },
                child: Text('Apply Discount'),
              ),
              const SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discount Applied:",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF045762),
                    ),
                  ),
                  Text(
                    'RM ${discount.toStringAsFixed(2)}',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF045762),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Final Payment:",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF045762),
                    ),
                  ),
                  Text(
                    'RM ${(totalPayment).toStringAsFixed(2)}',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF045762),
                    ),
                  ),
                ],
              ),
              TextFormField()
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HallPayment1(),
  ));
}
