import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {

   TaskTitle({
    required this.isCheked,
    required this.taskTitle,
    required this.toggleChekBox,
  });

  final bool isCheked;
  final String taskTitle;
  final Function (bool?) toggleChekBox;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isCheked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: SizedBox(
        width: 50,
        child: Checkbox(
          onChanged:toggleChekBox,
          value: isCheked,
        ),
      ),
    );
  }
}

