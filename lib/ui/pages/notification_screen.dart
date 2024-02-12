// ignore_for_file: deprecated_member_use, use_super_parameters, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:note_app/ui/theme.dart';
import 'package:note_app/ui/widgets/notification_widgets/CustomTitle_description.dart';
import 'package:note_app/ui/widgets/notification_widgets/Custom_App_Bar.dart';
import 'package:note_app/ui/widgets/notification_widgets/Custom_body_Date.dart';
import 'package:note_app/ui/widgets/notification_widgets/Custom_body_description.dart';
import 'package:note_app/ui/widgets/notification_widgets/Custom_title_not.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key, required this.payload}) : super(key: key);

  final String payload;

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String _payload = '';

  @override
  void initState() {
    _payload = widget.payload;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomAppBar(),
        elevation: 0,
        backgroundColor: context.theme.backgroundColor,
        title: Center(
          child: Text(
            _payload.toString().split('|')[0],
            style:
                TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Column(
              children: [
                HelloName(),
                SizedBox(height: 15),
                constTitle(),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: primaryClr,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomTitle_description(),
                      BarchText(0),
                      const SizedBox(height: 15),
                      const Custom_body_description(),
                      BarchText(1),
                      const SizedBox(height: 15),
                      const Custom_body_Date(),
                      BarchText(2),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Text BarchText(int index) {
    return Text(
      _payload.toString().split('|')[index],
      style: const TextStyle(
        color: Color.fromARGB(111, 255, 255, 255),
        fontWeight: FontWeight.w600,
        fontSize: 30,
      ),
    );
  }
}
