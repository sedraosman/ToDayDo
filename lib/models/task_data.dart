import 'package:pp/models/task.dart';
import 'package:flutter/material.dart';
class TaskData extends ChangeNotifier{
   List<Task> tasks=[

  Task(name: 'go to home'),
  Task(name: 'summing'),
 ];

void addTask(String newTaskTitle){
  tasks.add(Task(name: newTaskTitle));
  notifyListeners();

}
void updatecheckBox(Task task){
  task.change();
  notifyListeners();
}

void deletTask(Task task){
  tasks.remove(task);
  notifyListeners();
}

}