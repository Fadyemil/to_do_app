import 'package:flutter/material.dart';

class Custom_body_description extends StatelessWidget {
  const Custom_body_description({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.description_outlined,
          size: 30,
          color: Colors.white,
        ),
        SizedBox(width: 25),
        Text(
          'Description',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        )
      ],
    );
  }
}
