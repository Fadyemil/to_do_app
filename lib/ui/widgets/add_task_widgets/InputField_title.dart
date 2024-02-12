import 'package:flutter/material.dart';
import 'package:note_app/ui/widgets/input_field.dart';

class InputField_title extends StatelessWidget {
  const InputField_title({
    super.key,
    required TextEditingController titleController,
  }) : _titleController = titleController;

  final TextEditingController _titleController;

  @override
  Widget build(BuildContext context) {
    return InputField(
      title: 'Title',
      hint: 'Enter Title Here',
      controller: _titleController,
    );
  }
}

