import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool checkBoxChecked;
  final Function(bool) onChanged;
  final String taskText;

  TasksTile({this.checkBoxChecked, this.onChanged, this.taskText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskText,
        style: TextStyle(
          decoration: checkBoxChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: checkBoxChecked,
        onChanged: onChanged,
      ),
    );
  }
}
