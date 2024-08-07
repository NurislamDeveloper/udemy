import 'package:flutter/material.dart';
import 'package:state_managment/features/model/tasks.dart';
import 'package:state_managment/features/presentataions/pages/tasks_list.dart';
import 'buttum_sheet_page.dart';
// import 'package:flutter/widgets.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Tasks> task = [
    Tasks(name: "buy milk"),
    Tasks(name: "buy eggs"),
    Tasks(name: "buy bread"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            // isScrollControlled: true, //if I write this part of code it consists all screen
            isScrollControlled: true,
            builder: (context) => BottomSheetPage(
              (newTaskTitle) {
                setState(
                  () {
                    task.add(Tasks(name: newTaskTitle));
                  },
                );
                Navigator.pop(context);
              },
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 60,
              left: 30,
              right: 30,
              bottom: 30,
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                ),
                 const SizedBox(
                  height: 10.0,
                ),
                 const Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${task.length}",
                  style: const  TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 300.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(
                    20.0,
                  ),
                ),
              ),
              child: TasksList(
                task: const [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
