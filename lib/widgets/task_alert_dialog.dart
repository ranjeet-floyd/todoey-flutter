import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskAlertDialog extends StatelessWidget {
  final int index;

  TaskAlertDialog({this.index});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Want to delete task'),
      content: Text(
        Provider.of<TaskData>(context, listen: false).get(index).name,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Delete'),
          onPressed: () {
            print('Delete Task');
            Provider.of<TaskData>(context, listen: false).delete(index);
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
