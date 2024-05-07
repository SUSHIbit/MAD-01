// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment_master_sushi/pages/form_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class FormFill extends StatefulWidget {
  const FormFill({Key? key}) : super(key: key);

  @override
  State<FormFill> createState() => _FormFillState();
}

class _FormFillState extends State<FormFill> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addReqController = TextEditingController();
  final TextEditingController numPeopleController = TextEditingController();

  TimeOfDay _timeOfDay = TimeOfDay.now();

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: _timeOfDay,
    ).then((value) {
      if (value != null) {
        setState(() {
          _timeOfDay = value;
        });
      }
    });
  }

  TimeOfDay _timeOfDay2 = TimeOfDay.now();

  void _showTimePicker2() {
    showTimePicker(
      context: context,
      initialTime: _timeOfDay2,
    ).then((value) {
      if (value != null) {
        setState(() {
          _timeOfDay2 = value;
        });
      }
    });
  }

  DateTime _dateTime = DateTime.now().toLocal();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      initialDatePickerMode: DatePickerMode.day,
    ).then((value) {
      if (value != null) {
        setState(() {
          _dateTime = DateTime(value.year, value.month, value.day);
        });
      }
    });
  }

  DateTime _dateTime2 = DateTime.now().toLocal();

  void _showDatePicker2() {
    showDatePicker(
      context: context,
      initialDate: _dateTime2,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      initialDatePickerMode: DatePickerMode.day,
    ).then((value) {
      if (value != null) {
        setState(() {
          _dateTime2 = DateTime(value.year, value.month, value.day);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F2DA),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                SafeArea(
                  child: Center(
                    child: Image.asset(
                      'lib/images/user.png',
                      height: 100,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Center(
                  child: Text(
                    "Personal Details",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Name
                Text(
                  "Name",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Enter your name...",
                    hintStyle: TextStyle(fontSize: 14.0),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your name';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 25),

                // Address
                Text(
                  "Address",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(
                    hintText: "Enter your address...",
                    hintStyle: TextStyle(fontSize: 14.0),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your address';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 25),

                // Phone
                Text(
                  "Phone",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: "Enter your phone...",
                    hintStyle: TextStyle(fontSize: 14.0),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your phone number';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 25),

                // Email
                Text(
                  "Email",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter your email...",
                    hintStyle: TextStyle(fontSize: 14.0),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your email address';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 50),

                Center(
                  child: Text(
                    "Hall Details",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Booking Date
                Text(
                  "Booking Date",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      DateFormat('yyyy-MM-dd').format(_dateTime),
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 50),
                    MaterialButton(
                      onPressed: _showDatePicker,
                      color: Color(0xFF045762),
                      child: Text(
                        'Choose Date',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Booking Time
                Text(
                  "Booking Time",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      _timeOfDay.format(context).toString(),
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(width: 50),
                    MaterialButton(
                      onPressed: _showTimePicker,
                      color: Color(0xFF045762),
                      child: Text(
                        'Choose Time',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Event Date
                Text(
                  "Event Date",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      DateFormat('yyyy-MM-dd').format(_dateTime2),
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 50),
                    MaterialButton(
                      onPressed: _showDatePicker2,
                      color: Color(0xFF045762),
                      child: Text(
                        'Choose Date',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Event Time
                Text(
                  "Event Time",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      _timeOfDay2.format(context).toString(),
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(width: 50),
                    MaterialButton(
                      onPressed: _showTimePicker2,
                      color: Color(0xFF045762),
                      child: Text(
                        'Choose Time',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                Center(
                  child: Text(
                    "Additional Info",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Additional Request
                Text(
                  "Additional Request",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: addReqController,
                  decoration: InputDecoration(
                    hintText: "Enter your additional request...",
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your additional request...';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 25),

                // Number of people in the hall
                Text(
                  "Number of people",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: numPeopleController,
                  decoration: InputDecoration(
                    hintText: "Enter number of people...",
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter number of people...';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 50),

                // Elevated Button
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormDisplay(
                              fullName: nameController.text,
                              address: addressController.text,
                              phoneNumber: phoneController.text,
                              email: emailController.text,
                              bookingDate: _dateTime,
                              bookingTime: _timeOfDay,
                              eventDate: _dateTime2,
                              eventTime: _timeOfDay2,
                              additionalRequest: addReqController.text,
                              numberOfPeople: numPeopleController.text,
                            ),
                          ),
                        );
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF045762)),
                      minimumSize: MaterialStateProperty.all<Size>(
                          Size(200, 40)), // Set the size of the button
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.all(15)), // Set the padding of the button
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Set the border radius
                        ),
                      ),
                    ),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
