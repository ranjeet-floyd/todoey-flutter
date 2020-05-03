import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TasksTile(
          checkBoxChecked: widget.tasks[index].isDone,
          taskText: widget.tasks[index].name,
          onChanged: (newValue) {
            setState(() {
              widget.tasks[index].isDone = newValue;
            });
          },
        );
      },
    );
  }
}
