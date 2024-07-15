import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  TasksTitle({
    required this.isChecked,
    required this.tasksTitle,
    required this.chekBoxCallBack,
  });
  final bool isChecked;
  final String tasksTitle;
  final Function(bool?) chekBoxCallBack;

  // void callBack(bool? chekBoxState) {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasksTitle,
        // 'This is a task,',
        style: TextStyle(
          color: Colors.black,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
        
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: chekBoxCallBack,
      ),
    );
  }
}
