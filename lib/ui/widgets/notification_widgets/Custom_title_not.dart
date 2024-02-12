import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:note_app/ui/theme.dart';

class constTitle extends StatelessWidget {
  const constTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You have  a new reminder',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Get.isDarkMode ? Colors.green[100] : darkGreyClr,
        ),
      ),
    );
  }
}

class HelloName extends StatelessWidget {
  const HelloName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, Fady !',
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w900,
          color: Get.isDarkMode ? Colors.white : darkGreyClr,
        ),
      ),
    );
  }
}
