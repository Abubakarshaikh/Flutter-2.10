import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_bloc/todos_bloc.dart';
import 'package:todos_bloc/todos.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodosBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodosPage(),
      ),
    );
  }
}

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("TODOS"),
      ),
      body: BlocConsumer<TodosBloc, Todos>(
        listener: (context, state) {},
        builder: (context, state) {
          return TaskTile(todos: state);
        },
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  final Todos todos;
  const TaskTile({
    Key? key,
    required this.todos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todos.task),
      trailing: Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: const BorderSide(color: Colors.teal, width: 1),
        checkColor: Colors.white,
        activeColor: Colors.teal,
        value: todos.isComplete,
        onChanged: (newValue) =>
            context.read<TodosBloc>().add(todos.copyWith(isComplete: newValue)),
      ),
      onLongPress: () => context.read<TodosBloc>(),
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const TodosUpdatePage())),
    );
  }
}

class TodosUpdatePage extends StatefulWidget {
  const TodosUpdatePage({Key? key}) : super(key: key);

  @override
  State<TodosUpdatePage> createState() => _TodosUpdatePageState();
}

class _TodosUpdatePageState extends State<TodosUpdatePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("Todos Update"),
        ),
        body: BlocConsumer<TodosBloc, Todos>(
          listener: (context, state) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(_controller.text)));
          },
          builder: (context, state) {
            _controller.text = state.task;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    autofocus: true,
                    style: const TextStyle(fontSize: 18),
                    controller: _controller,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                    onPressed: () {
                      context
                          .read<TodosBloc>()
                          .add(state.copyWith(task: _controller.text));
                      Navigator.pop(context);
                    },
                    child: const Text("Update"),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
