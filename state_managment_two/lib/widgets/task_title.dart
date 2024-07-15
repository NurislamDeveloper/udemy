import 'package:flutter/material.dart';

class TaskTitle extends StatefulWidget {
  const TaskTitle({super.key});

  @override
  State<TaskTitle> createState() => _TaskTitleState();
}

class _TaskTitleState extends State<TaskTitle> {
  bool isCheked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a task",
        style: TextStyle(
          decoration: isCheked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: SizedBox(
        width: 50,
        child: ChekBoxed(
          click: isCheked,
          onChanged: (bool? currenIndexOFState) {
            if (currenIndexOFState != null) {
              setState(
                () {
                  isCheked = currenIndexOFState;
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class ChekBoxed extends StatelessWidget {
  ChekBoxed({required this.click, required this.onChanged});
  final bool click;
  final ValueChanged<bool?> onChanged;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: click,
      onChanged: onChanged,
    );
  }
}
