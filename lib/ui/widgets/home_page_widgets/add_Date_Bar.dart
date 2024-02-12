// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app/ui/theme.dart';

class addDateBar extends StatefulWidget {
  const addDateBar({super.key});

  @override
  State<addDateBar> createState() => _addDateBarState();
}

class _addDateBarState extends State<addDateBar> {
  // ignore: unused_field
  DateTime _SelectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return
     Container(
      margin: const EdgeInsets.only(top: 6, left: 20),
      child: DatePicker(
        DateTime.now(),
        initialSelectedDate: DateTime.now(),
        width: 70,
        height: 100,
        dateTextStyle: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        dayTextStyle: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        monthTextStyle: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        
        selectedTextColor: Colors.white,
        selectionColor: primaryClr,
        onDateChange: (newDate) {
          setState(() {
            _SelectedDate = newDate;
          });
        },
      ),
    );
  }
}
