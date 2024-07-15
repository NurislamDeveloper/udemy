import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding:  const EdgeInsets.all(
          20.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(
              20.0,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              textAlign: TextAlign.center,
              "Add Task",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            const TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              // cursorErrorColor: Colors.lightBlueAccent,
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              backgroundColor: Colors.lightBlueAccent,
              onPressed: () {},
              child: const Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
