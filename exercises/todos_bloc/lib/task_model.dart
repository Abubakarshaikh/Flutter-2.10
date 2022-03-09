import 'dart:convert';

class TaskModel {
  final String task;
  final bool isComplete;
  TaskModel({
    required this.task,
    required this.isComplete,
  });



  TaskModel copyWith({
    String? task,
    bool? isComplete,
  }) {
    return TaskModel(
      task: task ?? this.task,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'task': task,
      'isComplete': isComplete,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      task: map['task'] ?? '',
      isComplete: map['isComplete'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) => TaskModel.fromMap(json.decode(source));

  @override
  String toString() => 'TaskModel(task: $task, isComplete: $isComplete)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TaskModel &&
      other.task == task &&
      other.isComplete == isComplete;
  }

  @override
  int get hashCode => task.hashCode ^ isComplete.hashCode;
}
