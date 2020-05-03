import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_alert_dialog.dart';

class TasksTile extends StatelessWidget {
  final bool checkBoxChecked;
  final Function onChanged;
  final String taskText;
  final Function onLongPress;

  TasksTile({this.checkBoxChecked, this.onChanged, this.taskText, this.onLongPress});

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
      onLongPress: onLongPress,
    );
  }
}
