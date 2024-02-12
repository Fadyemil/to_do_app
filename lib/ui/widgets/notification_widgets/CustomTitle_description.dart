import 'package:flutter/material.dart';

class CustomTitle_description extends StatelessWidget {
  const CustomTitle_description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.text_format,
          size: 30,
          color: Colors.white,
        ),
        SizedBox(width: 25),
        Text(
          'Title',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        )
      ],
    );
  }
}