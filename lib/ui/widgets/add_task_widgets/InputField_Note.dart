import 'package:flutter/material.dart';
import 'package:note_app/ui/widgets/input_field.dart';

class InputField_Note extends StatelessWidget {
  const InputField_Note({
    super.key,
    required TextEditingController noteController,
  }) : _noteController = noteController;

  final TextEditingController _noteController;

  @override
  Widget build(BuildContext context) {
    return InputField(
      title: 'Note',
      hint: 'Enter Note Here',
      controller: _noteController,
    );
  }
}