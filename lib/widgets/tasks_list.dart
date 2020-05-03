import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index) {
          return TasksTile(
            checkBoxChecked: taskData.tasks[index].isDone,
            taskText: taskData.tasks[index].name,
            onChanged: (newValue) {
//            setState(() {
//              Provider.of<TaskData>(context).task[index].isDone = newValue;
//            });
            },
          );
        },
      );
    });
  }
}
