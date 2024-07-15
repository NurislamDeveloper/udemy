import 'package:flutter/material.dart';

class TaskTitle extends StatefulWidget {
  const TaskTitle({super.key});

  

  @override
  State<TaskTitle> createState() => _TaskTitleState();
}

class _TaskTitleState extends State<TaskTitle> {
  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      title:  const Text("This is a task"),
      trailing: Checkbox(
        value: true,
        onChanged: (bool) {},
      ),
    );
  }
}
