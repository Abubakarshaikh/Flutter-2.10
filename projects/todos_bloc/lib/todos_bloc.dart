import 'package:bloc/bloc.dart';
import 'package:todos_bloc/todos.dart';

class TodosBloc extends Bloc<Todos, Todos> {
  TodosBloc() : super(Todos(isComplete: false, task: 'Buy 1kg milk.')) {
    on<Todos>((Todos event, Emitter<Todos> emit) async {
      emit(event);
    });
  }
}
