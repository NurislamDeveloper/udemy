import 'package:flutter/material.dart';
import 'package:state_managment/features/model/tasks.dart';
import 'package:state_managment/features/presentataions/pages/tasks_title.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Tasks> task = [
    Tasks(name: "buy milk"),
    Tasks(name: "buy eggs"),
    Tasks(name: "buy bread"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTitle(
          isChecked: task[index].isDone,
          tasksTitle: task[index].name,
          chekBoxCallBack: (checkeBoxState) {
            setState(
              () {
                task[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: task.length,
    );
  }
}
