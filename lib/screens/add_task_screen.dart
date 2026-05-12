import 'package:flutter/material.dart';
import 'package:pp/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  final Function task;
  AddTaskScreen(this.task);
  @override
  Widget build(BuildContext context) {
    String? addTask;
    return  Container(
      padding: EdgeInsets.all(30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Add Task',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newTask) {
            addTask = newTask;
          },
        ),
        TextButton(
          onPressed: (){
           Provider.of<TaskData>(context , listen: false).addTask(
            addTask!
           );
           Navigator.pop(context);
          },
           child: Text('Add'),
           style: TextButton.styleFrom(
            backgroundColor: Colors.lime[200]
           ),
           
           )
      ],
    ),
    );
  }
}