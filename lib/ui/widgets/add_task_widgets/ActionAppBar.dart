import 'package:flutter/material.dart';

class ActionAppBar extends StatelessWidget {
  const ActionAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/images/person.jpeg'),
      radius: 24,
    );
  }
}
