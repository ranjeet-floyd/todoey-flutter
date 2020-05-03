import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy Some milk'),
    Task(name: 'Buy Some Sugar'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    Task task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTask(int index, bool newValue) {
    _tasks[index].isDone = newValue;
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void delete(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  Task get(int index) {
    return _tasks[index];
  }
}
