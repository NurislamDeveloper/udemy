import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
   BottomSheetPage(this.addTasksTitle,);
  final Function addTasksTitle;

  @override
  Widget build(BuildContext context) {
      String taskListTitle =" " ; // Initialize the variable with an empty string
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xff757575),
        child: Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Add Tasks',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newTasks) {
                  
                  taskListTitle = newTasks;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blue,
                  ),
                  minimumSize: MaterialStateProperty.all(
                    const Size(
                      400,
                      50,
                    ),
                  ), // Minimum size
                ),
                onPressed: () {
                  
                  addTasksTitle(taskListTitle);
                },
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
      ),
    );
  }
}
