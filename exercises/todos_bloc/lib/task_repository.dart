import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:todos_bloc/task_model.dart';

class TaskRepository {
  Future<List<TaskModel>> getAll() async {
    final fromJson = await _loadAsset("tasks.json");
    final fromMap = json.decode(fromJson) as List<dynamic>;
    final List<TaskModel> _tasks = fromMap.map((task) {
      return TaskModel.fromMap(task);
    }).toList();
    return _tasks;
  }

  //Load json data.
  Future<String> _loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }
}
