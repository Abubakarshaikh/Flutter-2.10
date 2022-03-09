import 'package:flutter_bloc/flutter_bloc.dart';

class TaskBloc extends Bloc<bool, bool> {
  TaskBloc() : super(true) {
    on((bool event, Emitter<bool> emit) {});
  }
}

