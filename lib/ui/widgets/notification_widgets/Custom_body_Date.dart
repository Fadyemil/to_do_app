import 'package:flutter/material.dart';

class Custom_body_Date extends StatelessWidget {
  const Custom_body_Date({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.calendar_today_outlined,
          size: 30,
          color: Colors.white,
        ),
        SizedBox(width: 25),
        Text(
          'Date',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        )
      ],
    );
  }
}
