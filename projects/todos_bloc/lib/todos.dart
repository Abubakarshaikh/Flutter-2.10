class Todos {
  final String task;
  final bool isComplete;
  Todos({
    required this.task,
    required this.isComplete,
  });

  Todos copyWith({
    String? task,
    bool? isComplete,
  }) {
    return Todos(
      task: task ?? this.task,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}
