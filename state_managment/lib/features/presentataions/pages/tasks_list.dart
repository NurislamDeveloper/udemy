import 'package:flutter/material.dart';
import 'package:state_managment/features/model/tasks.dart';
import 'package:state_managment/features/presentataions/pages/tasks_title.dart';

class TasksList extends StatefulWidget {
     TasksList({required this.task});
    final List <Tasks> task;


  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTitle(
          isChecked: widget.task[index].isDone,
          tasksTitle: widget.task[index].name,
          chekBoxCallBack: (checkeBoxState) {
            setState(
              () {
                widget.task[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: widget.task.length,
    );
  }
}
