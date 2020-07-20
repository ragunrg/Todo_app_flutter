import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function longPressCallback;
  TasksTile(
      {this.isChecked,
      this.taskTitle,
      this.checkBoxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,

//
      ),
//
    );
  }
}
