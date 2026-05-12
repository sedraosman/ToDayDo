import 'package:flutter/material.dart';
import 'package:pp/models/task_data.dart';
import 'package:pp/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import '../widged/tasks_list.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            context: context, 
            builder: (context)=>SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                child: AddTaskScreen((task){
                //  setState(() {
                //     tasks.add(Task(name: task));
                //   Navigator.pop(context);
                //  });
                })),
            ));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lime[200],
      ),
      backgroundColor: Colors.lime[400],
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
            children: [
              Icon(Icons.playlist_add,
              size: 50,
              ),
              SizedBox(width: 10),
              Text('ToDayDo',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
              ),
            ],
           ),
           Text('${Provider.of<TaskData>(context).tasks.length} Tasks',
           style: TextStyle(
            fontSize: 20,
           ),
           ),
           SizedBox(height: 30),
           Expanded(
             child: Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))

              ),
              child: 
              tasks_list(),
             ),
           )
          ],
        ),
      ),
    );
  }
}
