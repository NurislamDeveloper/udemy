import 'package:flutter/material.dart';
import 'package:state_managment/features/presentataions/pages/tasks_title.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  <Widget>[
        TasksTitle(),
        TasksTitle(),
        TasksTitle(),
      ],
    );
  }
}
