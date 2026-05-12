import 'package:flutter/material.dart';
import 'package:pp/models/task_data.dart';
import '/widged/list_tile.dart' show list_Tile;
import 'package:provider/provider.dart';
class tasks_list extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(
        itemCount: taskData.tasks.length,
        itemBuilder:(context,index){
      
          return list_Tile(
            taskName: taskData.tasks[index].name, 
            ischecked: taskData.tasks[index].ischecked,
            checkbox: 
              (newValue){ 
                taskData.updatecheckBox(taskData.tasks[index]);
              },
              deleteData:() {
                taskData.deletTask(taskData.tasks[index]);
              },
              );
      
        } ,
      );
      },

      
    );
  }
}
