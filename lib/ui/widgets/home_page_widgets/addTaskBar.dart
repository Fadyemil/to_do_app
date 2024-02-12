// ignore_for_file: await_only_futures, unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:note_app/controllers/task_controller.dart';
// import 'package:note_app/controllers/task_controller.dart';
import 'package:note_app/ui/pages/add_task_page.dart';
import 'package:note_app/ui/theme.dart';
import 'package:note_app/ui/widgets/button.dart';

class addTaskBar extends StatelessWidget {
  addTaskBar({super.key});

  final TaskController _taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style: subHeadingStyle,
              ),
              Text(
                'Today',
                style: headingStyle,
              )
            ],
          ),
          MyButton(
            label: '+ Add Task',
            onTap: () async {
              await Get.to(
                () => AddTaskPage(),
                transition: Transition.downToUp,
                duration: Duration(seconds: 2),
              );
              _taskController.getTasks();
            },
          )
        ],
      ),
    );
  }
}
