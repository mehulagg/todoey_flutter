import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [
    Task(name: 'First'),
    Task(name: 'Second'),
    Task(name: 'Third'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String task) {
    tasks.add(Task(name: task));
    notifyListeners();
  }

  // void addTask(value) {
  //   tasks.add(value);
  //   notifyListeners();
  // }
}
