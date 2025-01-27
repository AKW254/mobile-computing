import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks {
    return [..._tasks];
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTaskStatus(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }

  // Implement methods to update and delete tasks
}
