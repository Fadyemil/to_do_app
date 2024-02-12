import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:note_app/ui/theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon:  Icon(
        Icons.arrow_back_ios,
        size: 24,
        color: Get.isDarkMode ?Colors.white : darkGreyClr,
      ),
    );
  }
}
