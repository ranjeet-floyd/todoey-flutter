import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [
    Task(name: 'Buy Some milk'),
    Task(name: 'Buy Some Sugar'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    Task task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}
