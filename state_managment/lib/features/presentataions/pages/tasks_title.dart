import 'package:flutter/material.dart';

class TasksTitle extends StatefulWidget {
  @override
  State<TasksTitle> createState() => _TasksTitleState();
}

class _TasksTitleState extends State<TasksTitle> {
  bool isChecked = false;

  void callBack(bool? chekBoxState) {
    setState(
      () {
        isChecked = chekBoxState ?? true;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task,',
        style: TextStyle(
          color: Colors.black,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: CheckBox(
        checkeBoxState: isChecked,
        togleChekBox: callBack,
      ),
    );
  }
}

class CheckBox extends StatelessWidget {
  CheckBox({
    required this.checkeBoxState,
    required this.togleChekBox,
  });
  final bool checkeBoxState;
  final void Function(bool?) togleChekBox;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkeBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: togleChekBox,
    );
  }
}
