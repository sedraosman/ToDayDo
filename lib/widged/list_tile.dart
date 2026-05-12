import 'package:flutter/material.dart';



class list_Tile extends StatelessWidget {
final String taskName;
final bool ischecked;
final Function(bool?) checkbox;
final Function() deleteData;

list_Tile({required this.taskName,required this.ischecked,required this.checkbox,required this.deleteData});
  @override 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName,
      style: TextStyle( decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox
        (value: ischecked,
          activeColor: Colors.lime[600],
          onChanged:checkbox
      ),
      onLongPress: deleteData,
        
    );
  }
}