import 'package:flutter/material.dart';
import 'package:state_managment_two/models/task_title_model.dart';
import 'package:state_managment_two/widgets/task_title.dart';

class TasksList extends StatefulWidget {
   TasksList(this.task
  );

  final List<Tasks> task;
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskTitle(
            taskTitle: widget.task[index].name,
            isCheked: widget.task[index].isDone,
            toggleChekBox: (chekState) {
              setState(
                () {
                  widget.task[index].toggleDone();
                },
              );
            },
          );
        },
        itemCount: widget.task.length,
      ),
    );
  }
}
