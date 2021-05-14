import 'package:flutter/cupertino.dart';
import 'package:todoy/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "do a"),
    Task(name: "do b"),
    Task(name: "do c"),
  ];

  // for giving access of _Tasks to other file
  // view of a another list
  UnmodifiableListView<Task> get tasks {
    // return _tasks;//error
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  // in order to truly change something from some other screen we have to add notifyListener
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners(); //***imp
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void delteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
